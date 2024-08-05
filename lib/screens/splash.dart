import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hr_management/helper/colors.dart';
import 'package:hr_management/helper/images.dart';
import 'package:hr_management/screens/auth.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    _goToAnotherPage();
    super.initState();
  }

  void _goToAnotherPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AuthScreen.route);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.scaffoldBackground],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              Images.logo,
              fit: BoxFit.cover,
              width: 250,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
            alignment: Alignment.bottomCenter,
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
