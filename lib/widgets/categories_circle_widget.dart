import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesCircleWidget extends StatelessWidget {
  CategoriesCircleWidget(
      {super.key,
      required this.backColor,
      required this.shadowColor,
      this.imagePath,
      this.widgetIcon,
      required this.txt})
      : assert(imagePath != null || widgetIcon != null);
  final List<Color> backColor;
  final Color shadowColor;
  String? imagePath;
  Widget? widgetIcon;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,top: 8,bottom: 8),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              gradient: LinearGradient(
                colors: backColor,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  offset: Offset(0, 10),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
                child: imagePath != null
                    ? Image.asset(
                        imagePath!,
                        width: 38,
                        height: 38,
                      )
                    : widgetIcon),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                color: Color(0xff515c6f),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
