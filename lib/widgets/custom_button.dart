import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String icon;
  final double iconSize;
  final Color buttonColor;
  final double distance;
  final TextStyle textStyle;
  final double width;
  final double height;
  const CustomButton({
    super.key, 
    required this.onTap, 
    required this.text, 
    required this.icon, 
    required this.iconSize, 
    this.buttonColor = const Color(0XFFFF2828), 
    this.distance = 16.67, 
    required this.textStyle,
    this.width = double.infinity, this.height = 62
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: textStyle
            ),
            SizedBox(width: distance),
            SvgPicture.asset(
              icon,
              height: iconSize
            )
          ],
        ),
      ),
    );
  }
}