import 'package:flutter/material.dart';
import 'package:kuy_ngaji/ui/pages/jadwal_shalat_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JadwalShalatPage(),
    );
  }
}
