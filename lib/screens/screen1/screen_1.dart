import 'package:flutter/material.dart';
import 'package:video_call_screens/screens/screen1/components/bootom_menu.dart';
import 'package:video_call_screens/screens/screen1/components/header_comp.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool onlyComingVideo = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                onlyComingVideo = !onlyComingVideo;
              });
            },
            child: Container(
              height: size.height,
              width: size.width,
              // if you use this screen here implement coming video call
              // i use just photo for demo
              decoration: const BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.white,
                    BlendMode.darken,
                  ),
                  fit: BoxFit.cover,
                  image: AssetImage('assets/photos/call_background.jpg'),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            left: 0,
            right: 0,
            top: onlyComingVideo ? -200 : 0,
            duration: const Duration(milliseconds: 300),
            child: CallScreenHeaderComponents(ctx: context),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            bottom: onlyComingVideo ? -250 : 0,
            left: 0,
            right: 0,
            child: const BottomMenu(),
          ),
        ],
      ),
    );
  }
}
