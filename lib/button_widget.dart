import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  const ButtonWidget(this.text, this.onTap, {super.key});

  final String text;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 23, 3, 77),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      ),
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}
