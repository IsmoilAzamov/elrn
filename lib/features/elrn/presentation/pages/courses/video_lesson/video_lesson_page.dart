import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse("https://video-stream.istc.uz/api/Stream/GetVideo/3e750985-8529-4c29-a568-614d57d65d04/master.m3u8"),
    );

    _videoPlayerController.initialize().then((_) {
      _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: false,
          looping: false,
          fullScreenByDefault: false,
          allowFullScreen: true,
          aspectRatio: _videoPlayerController.value.aspectRatio,
          materialProgressColors: ChewieProgressColors(
            playedColor: Colors.white,
            handleColor: Colors.white,
            backgroundColor: AppColors.gray,
            bufferedColor: Colors.black,
          ),
          cupertinoProgressColors: ChewieProgressColors(
            playedColor: Colors.white,
            handleColor: Colors.white,
            backgroundColor: AppColors.gray,
            bufferedColor: Colors.black,
          ),
          customControls: CustomChewieControls());

      setState(() {});
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: _chewieController != null && _chewieController!.videoPlayerController.value.isInitialized
          ? Column(
            children: [
              CurvedAppBar(title: "video_lesson".tr()),
              const SizedBox(height: 20),
              Container(
                height: 200,

                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                width: double.infinity,

                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 4,
                  shadowColor: Colors.black.withOpacity(0.5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Chewie(
                      controller: _chewieController!,
                    ),
                  ),
                ),
              ),
              // You can add additional controls here, such as the skip forward/backward buttons
            ],
          )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class CustomChewieControls extends StatefulWidget {
  const CustomChewieControls({super.key});

  @override
  State<CustomChewieControls> createState() => _CustomChewieControlsState();
}

class _CustomChewieControlsState extends State<CustomChewieControls> {
  late Timer _hideControlsTimer;
  bool _controlsVisible = true;

  @override
  void initState() {
    super.initState();
    _startHideControlsTimer();
  }

  @override
  void dispose() {
    _hideControlsTimer.cancel();
    super.dispose();
  }

  void _startHideControlsTimer() {
    _hideControlsTimer = Timer(const Duration(seconds: 3), () {
      setState(() {
        _controlsVisible = false;
      });
    });
  }

  void _resetHideControlsTimer() {
    if (_hideControlsTimer.isActive) {
      _hideControlsTimer.cancel();
    }
    setState(() {
      _controlsVisible = true;
    });
    _startHideControlsTimer();
  }

  @override
  Widget build(BuildContext context) {
    final chewieController = ChewieController.of(context);
    final videoPlayerController = chewieController.videoPlayerController;

    return GestureDetector(
      onTap: _resetHideControlsTimer,
      child: AnimatedOpacity(
        opacity: _controlsVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          color: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              // Center Play/Pause and Skip buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.replay_10, color: Colors.white),
                    onPressed: () {
                      final currentPosition = videoPlayerController.value.position;
                      videoPlayerController.seekTo(currentPosition - const Duration(seconds: 10));
                    },
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      if (!_hideControlsTimer.isActive) {
                        return;
                      }
                      if (videoPlayerController.value.isPlaying) {
                        videoPlayerController.pause();
                      } else {
                        videoPlayerController.play();
                      }
                      setState(() {});
                    },
                    child: Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.bgDark.withOpacity(0.5),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Icon(
                          videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.forward_10, color: Colors.white),
                    onPressed: () {
                      if (!_hideControlsTimer.isActive) {
                        return;
                      }
                      final currentPosition = videoPlayerController.value.position;
                      videoPlayerController.seekTo(currentPosition + const Duration(seconds: 10));
                    },
                  ),
                ],
              ),
              // Time indicators and progress bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Current time
                  Text(
                    _formatDuration(videoPlayerController.value.position),
                    style: const TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  const SizedBox(width: 4),
                  // Progress bar
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: VideoProgressIndicator(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        videoPlayerController,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          playedColor: Colors.white,
                          backgroundColor: AppColors.gray,
                          bufferedColor: Colors.white38,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  // Total duration
                  Text(
                    _formatDuration(videoPlayerController.value.duration),
                    style: const TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  // Fullscreen button
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                    icon: Icon(
                      chewieController.isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      if (!_hideControlsTimer.isActive) {
                        return;
                      }
                      chewieController.isFullScreen ? chewieController.exitFullScreen() : chewieController.enterFullScreen();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to format duration into hh:mm:ss
  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return hours > 0
        ? '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}'
        : '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
