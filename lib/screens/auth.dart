import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_management/widgets/auth/auth_body.dart';

import '../helper/images.dart';

class AuthScreen extends StatelessWidget {
  static const String route = 'auth_screen';

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const AuthBody(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              Images.isolation,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
