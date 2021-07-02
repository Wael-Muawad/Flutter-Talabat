import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat/Video_Player_Widget.dart';
import 'package:video_player/video_player.dart';
import '../OrangeBoard.dart';
import '../components/rounded_button.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  VideoPlayerController controller;
  final videoAsset = 'assets/videos/intro.mp4';
  TextStyle btnTxtStyle = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepOrange);

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(videoAsset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.play())
      ..setVolume(0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Container(
        height: size.height,
        width: size.width,
        //color: Colors.deepOrange,
        child: Stack(
          //fit: StackFit.expand,
          //alignment: Alignment.topRight,
          children: [
            Positioned(
              top: 0,
              width: size.width,
              child: Hero(
                  tag: 'video',
                  child: Container(
                    alignment: Alignment.topCenter,
                    //color: Colors.deepOrange,
                    child: VideoPlayerWidget(controller: controller, Ratio: 1),
                  )),
            ),


            Positioned(
                bottom: 0,
                child: OrangeBoard (
                  height: size.height / 1.8,
                  width: size.width,
                  topLeft: 30,
                  topRight: 30,
                  opacity: 1,
                  color: Colors.white,
                  widget: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedButton(
                            text: 'Login',
                            textColor: Colors.white,
                            btnColor: Colors.deepOrange,
                            width: 0.9,
                            marginDouble: 10,
                            press: () {
                              Navigator.of(context)
                                  .pushNamed('login', arguments: controller);
                            }
                        ),

                        SizedBox(height: 10,),

                        RoundedButton(
                          text: 'Signup',
                          textColor: Colors.white,
                          btnColor: Colors.deepOrange,
                          width: 0.9,
                          marginDouble: 10,
                          press: () {
                            Navigator.of(context)
                                .pushNamed('signup', arguments: controller);
                          },
                        ),

                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
//height 340
//360

//VideoPlayerWidget(controller: controller),
