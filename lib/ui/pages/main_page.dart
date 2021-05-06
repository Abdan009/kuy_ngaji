import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kuy_ngaji/ui/pages/alquran/alquran_page.dart';
import 'package:kuy_ngaji/ui/pages/jadwal_shalat_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color(0xFFE5E5E5),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.mosque), label: 'Shalat'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.quran), label: "Al-Qur'an"),
        ],
      ),
      body: (currentIndex == 0) ? JadwalShalatPage() : AlquranPage(),
    );
  }
}
