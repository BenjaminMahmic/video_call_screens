import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallScreenHeaderComponents extends StatefulWidget {
  final BuildContext ctx;

  const CallScreenHeaderComponents({Key? key, required this.ctx})
      : super(key: key);

  @override
  State<CallScreenHeaderComponents> createState() =>
      _CallScreenHeaderComponentsState();
}

class _CallScreenHeaderComponentsState
    extends State<CallScreenHeaderComponents> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(widget.ctx).pop();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(
                  color: Colors.black45,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/photos/svg/left.svg',
                  height: 15,
                  color: Colors.red.withOpacity(0.8),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() {
              isExpanded = !isExpanded;
            }),
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: isExpanded ? 220 : 150,
                  width: isExpanded ? 150 : 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white54,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/photos/call_background2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: SvgPicture.asset(
                    'assets/photos/svg/expand-tool.svg',
                    height: isExpanded ? 24 : 16,
                    color: Colors.white,
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
