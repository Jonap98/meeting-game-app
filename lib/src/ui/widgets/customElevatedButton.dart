// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final bool isFilled;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.color = Colors.blue,
    this.onPressed,
    this.isFilled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: isFilled ? color : Colors.grey,
        side: BorderSide(color: isFilled ? Colors.transparent : color),
      ),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 50.0,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 17.0),
          ),
        ),
      ),
    );
  }
}
