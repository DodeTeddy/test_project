import 'package:flutter/material.dart';
import 'package:test_project_dimata_it/screens/home/home_screen.dart';
import 'package:test_project_dimata_it/screens/news/news_screen.dart';
import 'package:test_project_dimata_it/screens/profile/profile_screen.dart';
import 'package:test_project_dimata_it/screens/search/search_screen.dart';
import 'package:test_project_dimata_it/widgets/custom_appbar.dart';
import 'package:test_project_dimata_it/widgets/custom_navigationbar_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  Widget screen(int index){
    if (index == 0) {
      return const HomeScreen();
    }else if(index == 1){
      return const SearchScreen();
    }else if(index == 2){
      return const NewsScreen();
    }else{
      return const ProfileScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.grey.withOpacity(0.2),
          flexibleSpace: const SafeArea(
            child: CustomAppBar()
          ),
        ),
      ),
      body: screen(index),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomNavigationBarItem(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                }, 
                asset: 'beranda.svg', 
                title: 'Beranda', 
                isActive: index == 0
              ),
              CustomNavigationBarItem(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                }, 
                asset: 'pencarian.svg', 
                title: 'Pencarian', 
                isActive: index == 1
              ),
              CustomNavigationBarItem(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                }, 
                asset: 'berita.svg', 
                title: 'Berita', 
                isActive: index == 2
              ),
              CustomNavigationBarItem(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                }, 
                asset: 'profil.svg', 
                title: 'Profil', 
                isActive: index == 3
              ),
            ],
          ),
        ),
      ),
    );
  }
}