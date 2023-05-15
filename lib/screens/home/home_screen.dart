import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_gridview_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List textGridViewItem = ['Ambulans', 'Kebakaran', 'Kecelakaan', 'Banjir'];
    List iconGridViewItem = [
      'assets/icons/ambulans.svg',
      'assets/icons/kebakaran.svg',
      'assets/icons/kecelakaan.svg',
      'assets/icons/banjir.svg'
    ];
    List assetGridViewItem = [
      'assets/images/ambulance.jpg',
      'assets/images/kebakaran.jpg',
      'assets/images/kecelakaan.jpg',
      'assets/images/banjir.jpg'
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 7),
              child: Text(
                'Pertolongan Cepat',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 385,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return CustomGridViewItem(
                    widget: CustomButton(
                      width: 101,
                      height: 36,
                      distance: 6.67,
                      onTap: () {
                        
                      }, 
                      text: 'Tolong', 
                      icon: 'assets/icons/peringatan.svg', 
                      iconSize: 16.67, 
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ), 
                    text: textGridViewItem[index], 
                    icon: iconGridViewItem[index],
                    asset: assetGridViewItem[index],
                  );
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                onTap: () {
                  
                }, 
                text: 'TOLONG', 
                icon: 'assets/icons/peringatan.svg', 
                iconSize: 26.67,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}