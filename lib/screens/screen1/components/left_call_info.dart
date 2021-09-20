import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Publisher',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 15,
                ),
              ],
            ),
          ),
          const Text(
            'Jennifer Aniston',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 20,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white30,
            ),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
                SizedBox(width: 10),
                Text(
                  '22:15',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
