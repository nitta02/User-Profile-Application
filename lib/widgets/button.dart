import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Function() onPressed;

  final String text;

  const CommonButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          shape: WidgetStatePropertyAll(
        BeveledRectangleBorder(),
      )),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
