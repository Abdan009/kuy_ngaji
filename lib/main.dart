import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuy_ngaji/ui/pages/main_page.dart';
import 'package:kuy_ngaji/ui/pages/stateful_page.dart';
import 'package:kuy_ngaji/ui/pages/stateles_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
