import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerController controller;
  double Ratio;


  VideoPlayerWidget({@required this.controller, @required this.Ratio});

  @override
  Widget build(BuildContext context) {
    if (controller != null && controller.value.isInitialized)
      return Container(
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: Ratio,
          child: VideoPlayer(controller),
        ),
      );
    else
      return Container(
        height: 200,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
  }
}
