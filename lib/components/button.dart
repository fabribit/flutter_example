import 'package:flutter/material.dart';
import 'package:test_code/constants.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
  Button(
      {Key? key,
      required this.text,
      required this.onTouch,
      this.enabled = true})
      : super(key: key);

  final String text;
  final Function onTouch;
  bool enabled;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.enabled) {
          widget.onTouch();
        }
      },
      child: Ink(
        decoration: BoxDecoration(
          color: widget.enabled ? Constants.buttonColor : Constants.bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          border: Border.all(
            color: widget.enabled ? Constants.buttonColor : Constants.buttonColor.withOpacity(.5),
          )
        ),
        height: 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(width: 48),
            Expanded(
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.enabled ? Colors.black : Colors.white.withOpacity(.5),
                    fontSize: 21.3,
                    fontFamily: 'Rubik'
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: 10,
                width: 25,
                child: ImageIcon(
                  AssetImage('assets/icons/send.png'),
                  color: Color(0xFF3A5A98),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
