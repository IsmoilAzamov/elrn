import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart'; // Import cache manager
import '../../../../../di.dart';
import 'image_event.dart';
import 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageLoadingState()) {
    on<GetImageEvent>(_getImage);
  }

  // Define a custom cache manager (optional, you can use DefaultCacheManager as well)
  final CacheManager _cacheManager = CacheManager(
    Config(
      'elRNImageCache',
      stalePeriod: const Duration(days: 7), // Cache for 7 days
      maxNrOfCacheObjects: 100, // Keep up to 100 objects in the cache
    ),
  );

  Future<void> _getImage(GetImageEvent event, Emitter<ImageState> emit) async {
    Dio dio = sl<Dio>();
    emit(ImageLoadingState());

    try {
      print("ImageBloc: _getImage: event.url: ${event.url}");

      // First, try to get the image from the cache
      FileInfo? cachedFile = await _cacheManager.getFileFromCache(event.url);

      if (cachedFile != null) {
        // Image is available in the cache, so load it
        Uint8List imageData = await cachedFile.file.readAsBytes();
        emit(ImageLoadedState(bytes: imageData));
        print("ImageBloc: _getImage: loaded from cache");
      } else {
        // If not in cache, download the image
        final Response<List<int>> response = await dio.get<List<int>>(
          event.url,
          options: Options(
            responseType: ResponseType.bytes, // Expect binary data (raw image)
          ),
        );

        if (response.statusCode == 200 && response.data != null) {
          Uint8List imageData = Uint8List.fromList(response.data!);

          // Cache the image after downloading
          await _cacheManager.putFile(
            event.url, // Use the URL as the cache key
            imageData,
          );

          emit(ImageLoadedState(bytes: imageData));
          print("ImageBloc: _getImage: downloaded and cached");
        } else {
          emit(ImageErrorState(message: "Failed to load image: ${response.statusCode}"));
        }
      }
    } on DioException catch (e) {
      print("ImageBloc: DioError: $e");
      emit(ImageErrorState(message: e.toString()));
    } catch (e) {
      print("ImageBloc: Error: $e");
      emit(ImageErrorState(message: e.toString()));
    }
  }
}
