import 'package:flutter/material.dart';
import 'package:kuy_ngaji/ui/pages/alquran/juz/juz_page.dart';
import 'package:kuy_ngaji/ui/pages/alquran/surah/surah_page.dart';

class AlquranPage extends StatefulWidget {
  @override
  _AlquranPageState createState() => _AlquranPageState();
}

class _AlquranPageState extends State<AlquranPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.orange,
          title: Text("Al-Qur'an"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Surah',
              ),
              Tab(
                text: 'Juz',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SurahPage(),
            JuzPage(),
          ],
        ),
      ),
    );
  }
}
