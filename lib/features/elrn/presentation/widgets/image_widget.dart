import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../di.dart';
import '../bloc/image_bloc/image_bloc.dart';
import '../bloc/image_bloc/image_event.dart';
import '../bloc/image_bloc/image_state.dart';

class ImageWidget extends StatefulWidget {
  final String url;
  final double? width;
  final bool? isCircular;
  final double? height;

  const ImageWidget({super.key, required this.url, this.width, this.isCircular, this.height});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  final _bloc = sl<ImageBloc>();

  @override
  void initState() {
    _bloc.add(GetImageEvent(url: widget.url));
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width == null ? 120 : (widget.width!),
      child: Center(
        child: BlocBuilder<ImageBloc, ImageState>(
          bloc: _bloc,
          builder: (context, state) {
            if (state is ImageLoadingState) {
              return SizedBox(width: widget.width ?? 100, height: widget.height ?? widget.width ?? 100, child: loadingIndicator());
            } else if (state is ImageLoadedState) {
              //make base64 String to image
              return SizedBox(
                width: widget.width ?? 100,
                height: widget.height ?? widget.width ?? 100,
                child: widget.isCircular == true
                    ? ClipRRect(borderRadius: BorderRadius.circular(widget.width ?? 100), child: Image.memory(state.bytes, width: widget.width ?? 100, fit: BoxFit.cover))
                    : Image.memory(
                        state.bytes,
                        width: widget.width ?? 100,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.error,
                            color: Colors.grey,
                          );
                        },
                      ),
              );
            } else if (state is ImageErrorState) {
              return const Icon(
                Icons.error,
                color: Colors.grey,
              );
            } else {
              return const Icon(
                Icons.image,
                color: Colors.grey,
              );
            }
          },
        ),
      ),
    );
  }
}
