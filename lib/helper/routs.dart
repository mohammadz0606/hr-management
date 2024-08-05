import 'package:flutter/material.dart';

import '../screens/auth.dart';
import '../screens/navigation.dart';
import '../screens/splash.dart';

Map<String, WidgetBuilder> appRoutes = {
  SplashScreen.route : (context) => const SplashScreen(),
  AuthScreen.route : (context) => const AuthScreen(),
  NavigationScreen.route: (context) => const NavigationScreen(),
};