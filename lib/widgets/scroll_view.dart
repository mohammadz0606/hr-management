import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView({
    super.key,
    this.child,
    this.padding,
  });

  final Widget? child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      padding: padding,
      child: child,
    );
  }
}
