import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:test_code/components/button.dart';
import 'package:test_code/constants.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(context) => Scaffold(
    backgroundColor: Constants.bgColor,
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(text: 'Continue', onTouch: (){
              Get.toNamed('/profile_report');
            }),
          ],
        ),
      ),
    ),
  );
}
