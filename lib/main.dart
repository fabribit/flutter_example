import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_code/screens/end.dart';
import 'package:test_code/screens/home.dart';
import 'package:test_code/screens/profile_report.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/profile_report', page: () => ProfileReport()),
        GetPage(name: '/end', page: () => End()),
      ],
    );
  }
}
