import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
  });

  final String? text;
  final Widget? child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        child: child ?? Text(text ?? ''),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        child: child ?? Text(text ?? ''),
      );
    }
  }
}
