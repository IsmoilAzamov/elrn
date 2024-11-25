import 'package:chewie/chewie.dart';
import 'package:elrn/features/elrn/presentation/bloc/video_lesson/video_lesson_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/video_lesson/video_lesson_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/urls.dart';
import '../../../../../core/resources/datastate.dart';
import '../../../../../main.dart';
import '../../../domain/entities/my_lesson/my_lesson_entity.dart';
import '../../../domain/repositories/my_lesson_repository.dart';
import '../../pages/courses/video_lesson/custom_chewie_controls.dart';

class VideoLessonBloc extends Bloc<VideoLessonEvent, VideoLessonState> {
  final MyLessonRepository myLessonRepository;

  VideoLessonBloc(this.myLessonRepository) : super(VideoLessonLoadingState()) {
    on<VideoLessonLoadEvent>(_loadVideo);
  }

  Future<void> _loadVideo(VideoLessonLoadEvent event, Emitter<VideoLessonState> emit) async {
    emit(VideoLessonLoadingState());
    final DataState<VideoLessonEntity> dataState = await myLessonRepository.getMyVideoLessons(lessonId: event.lessonId);
    if (dataState is DataSuccess && dataState.data != null) {
      try {
        final videoPlayerController = VideoPlayerController.networkUrl(
            Uri.parse("$VIDEO_STREAM_DOMAIN/api/Stream/GetVideo/${dataState.data!.videoFiles?.firstOrNull?.id}/${dataState.data!.videoFiles?.firstOrNull?.fileName}"));
        await videoPlayerController.initialize();

        chewieController = ChewieController(
          videoPlayerController: videoPlayerController,
          autoPlay: false,
          looping: false,
          fullScreenByDefault: false,
          allowFullScreen: true,
          aspectRatio: videoPlayerController.value.aspectRatio,
          materialProgressColors: ChewieProgressColors(
            playedColor: Colors.white,
            handleColor: Colors.white,
            backgroundColor: AppColors.gray,
            bufferedColor: AppColors.bgDark,
          ),
          cupertinoProgressColors: ChewieProgressColors(
            playedColor: Colors.white,
            handleColor: Colors.white,
            backgroundColor: AppColors.bgDark,
            bufferedColor: Colors.black,
          ),
          customControls: CustomChewieControls(videoThumbnailId: dataState.data!.videoThumbnailId??""),
        );

        emit(VideoLessonLoadedState(chewieController!, dataState.data!));
      } catch (e) {
        emit(VideoLessonErrorState(e.toString()));
      }
    }
  }

  // Manually dispose of the ChewieController
  void disposeChewieController() {
    chewieController?.dispose();
    chewieController = null;  // Reset the controller after disposing.
  }

// Ensure to dispose of the ChewieController manually in your widget lifecycle or wherever you need it.
}
