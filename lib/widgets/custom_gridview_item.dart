import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomGridViewItem extends StatelessWidget {
  final String text;
  final String icon;
  final Widget widget;
  final String asset;
  const CustomGridViewItem({super.key, required this.widget, required this.text, required this.icon, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
          width: 0.5
        )
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(width: 11),
                      SvgPicture.asset(icon)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: widget
              )
            ],
          ),
        ),
      ),
    );
  }
}