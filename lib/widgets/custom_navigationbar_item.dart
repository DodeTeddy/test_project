import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final Function() onTap;
  final String asset;
  final bool isActive;
  final String title;
  const CustomNavigationBarItem({super.key, required this.onTap, required this.asset, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/$asset', 
              height: 16, 
              colorFilter: ColorFilter.mode(isActive ? const Color(0XFFE0792B) : const Color(0XFFC9C9C9), BlendMode.srcIn)
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: isActive ? const Color(0XFFE0792B) : const Color(0XFFC9C9C9)
              ),
            )
          ],
        ),
      )
    );
  }
}