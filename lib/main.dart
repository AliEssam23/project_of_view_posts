import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project_of_view_posts/pages/homePage/viewOfHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage());
  }
}
