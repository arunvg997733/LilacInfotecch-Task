import 'package:flutter/material.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/video_player/widget/widget.dart';
import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _controller.value.isInitialized
                ? Container(
                    height: 220,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.secondary,
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(children: [
                        VideoPlayer(_controller),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _controller.value.isPlaying
                                        ? _controller.pause()
                                        : _controller.play();
                                  });
                                },
                                icon: CustomIconWidget(
                                  icon: _controller.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 50,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _controller
                                      .seekTo(const Duration(seconds: -2));
                                },
                                icon: CustomIconWidget(
                                  icon: Icons.skip_previous_sharp,
                                  size: lFont,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _controller
                                      .seekTo(const Duration(seconds: 2));
                                },
                                icon: CustomIconWidget(
                                  icon: Icons.skip_next_sharp,
                                  size: lFont,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                               
                                },
                                icon: CustomIconWidget(
                                  icon: Icons.volume_up,
                                  size: lFont,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: CustomIconWidget(
                                  icon: Icons.settings,
                                  size: lFont,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: CustomIconWidget(
                                  icon: Icons.fullscreen,
                                  size: lFont,
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  )
                : Container(
                    height: 220,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ContainerIconWidget(
                    icon: Icons.chevron_left_rounded,
                  ),
                  InkWell(
                    onTap: () {
                      ;
                    },
                    child: const ContainerTextAndIconWidget(
                        icon: Icons.arrow_drop_down_sharp, text: 'Download'),
                  ),
                  const ContainerIconWidget(
                    icon: Icons.chevron_right_rounded,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
