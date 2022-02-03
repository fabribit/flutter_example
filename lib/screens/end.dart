import 'package:flutter/material.dart';
import 'package:test_code/components/app_texts.dart';
import 'package:test_code/constants.dart';

class End extends StatefulWidget {
  const End({Key? key}) : super(key: key);

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(context) => Scaffold(
    backgroundColor: Constants.bgColor,
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppTexts.title('Thanks!'),
          ],
        ),
      ),
    ),
  );
}
