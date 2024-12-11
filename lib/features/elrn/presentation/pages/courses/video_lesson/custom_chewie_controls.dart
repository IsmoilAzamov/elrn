import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/urls.dart';
import '../../../../data/datasources/local/segments_db_service.dart';

class CustomChewieControls extends StatefulWidget {
  final String videoThumbnailId;

  const CustomChewieControls({super.key, required this.videoThumbnailId});

  @override
  State<CustomChewieControls> createState() => _CustomChewieControlsState();
}

class _CustomChewieControlsState extends State<CustomChewieControls> {
  late Timer _hideControlsTimer;
  bool _controlsVisible = false;
  late Timer _periodicTimer;

  @override
  void initState() {
    super.initState();
    _startHideControlsTimer();
    _startPeriodicTimer();
  }


  @override
  void dispose() {
    _hideControlsTimer.cancel();
    _periodicTimer.cancel();
    super.dispose();
  }

  void _startHideControlsTimer() {
    _hideControlsTimer = Timer(const Duration(seconds: 3), () {
      setState(() {
        if (ChewieController.of(context).videoPlayerController.value.isPlaying) {;
          _controlsVisible = false;
        }
      });
    });
  }

  void _resetHideControlsTimer() {
    if (_hideControlsTimer.isActive) {
      _hideControlsTimer.cancel();
    }
    setState(() {
      _controlsVisible = !_controlsVisible;
    });
    _startHideControlsTimer();
  }

  void _startPeriodicTimer() {
    _periodicTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        print(ChewieController.of(context).videoPlayerController.value.position);
        getSeconds(ChewieController.of(context).videoPlayerController.value.position);

      });
    });
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
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          decoration: BoxDecoration(
              color: AppColors.bgDark.withOpacity(0.5),
              image: !ChewieController.of(context).videoPlayerController.value.isPlaying
                  ? (ChewieController.of(context).videoPlayerController.value.position < const Duration(seconds: 10)
                      ? DecorationImage(
                          colorFilter: ColorFilter.mode(
                            AppColors.bgDark.withOpacity(0.5),
                            BlendMode.darken,
                          ),
                          image: NetworkImage(
                            "$LMS_DOMAIN/api/VideoLesson/DownloadFile/${widget.videoThumbnailId}",
                          ),
                          fit: BoxFit.cover,
                        )
                      : null)
                  : null),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20),
                  // Center Play/Pause and Skip buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.replay_10,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {
                          if (!_controlsVisible) {
                            _resetHideControlsTimer();
                            return;
                          }
                          final currentPosition = videoPlayerController.value.position;
                          videoPlayerController.seekTo(currentPosition - const Duration(seconds: 10));
                          setState(() {});
                        },
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          if (!_controlsVisible) {
                            _resetHideControlsTimer();
                            return;
                          }
                          if (videoPlayerController.value.isPlaying) {
                            videoPlayerController.pause();
                          } else {
                            videoPlayerController.play();
                            _startHideControlsTimer();
                          }
                          setState(() {});
                        },
                        child: Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.bgDark.withOpacity(0.5),
                              border: Border.all(color: Colors.green),
                            ),
                            child: Icon(videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white, size: 32),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(
                          Icons.forward_10,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {
                          if (!_controlsVisible) {
                            _resetHideControlsTimer();
                            return;
                          }
                          final currentPosition = videoPlayerController.value.position;
                          videoPlayerController.seekTo(currentPosition + const Duration(seconds: 10));
                          setState(() {});
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
                          if (!_controlsVisible) {
                            _resetHideControlsTimer();
                            return;
                          }

                          chewieController.isFullScreen ? chewieController.exitFullScreen() : chewieController.enterFullScreen();
                        },
                      ),
                    ],
                  ),
                ],
              ),
              //thumbnail
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
    String result = hours > 0
        ? '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}'
        : '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    print(result);
    return result;
  }


  void getSeconds(Duration position) {
    int seconds = position.inSeconds;
    print("seconds: $seconds");
    if(seconds%3==0){
      SegmentsDBService.addSegment("index${int.parse((seconds/3).floor().toString())}.ts" );
    }
  }
}
