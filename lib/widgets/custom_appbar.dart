import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
              height: 96,
              width: 91,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_bpbd.png')
                )
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Denpasar',
                      style: TextStyle(
                        color: Color(0XFF38AAFD),
                        fontSize: 26,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'DEWaS',
                      style: TextStyle(
                        color: Color(0XFFFF2828),
                        fontSize: 26,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15.5),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/call.png',
                    height: 52,
                    width: 52,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '112',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}