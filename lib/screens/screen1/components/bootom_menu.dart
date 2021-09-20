import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_call_screens/screens/screen1/components/left_call_info.dart';
import 'package:video_call_screens/screens/screen1/components/right_options.dart';

import 'clipper.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromRGBO(20, 20, 20, 1),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            child: SvgPicture.asset(
              'assets/photos/svg/phone-call-end.svg',
              color: Colors.white,
              height: 30,
              width: 30,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/photos/svg/upload.svg',
                color: Colors.white,
                height: 18,
                width: 18,
              ),
              SvgPicture.asset(
                'assets/photos/svg/reload.svg',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 60),
              SvgPicture.asset(
                'assets/photos/svg/comment.svg',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
              SvgPicture.asset(
                'assets/photos/svg/menu.svg',
                color: Colors.white,
                height: 18,
                width: 18,
              ),
            ],
          ),
        ),
        const RightOptions(),
        const CallInfo(),
      ],
    );
  }
}
