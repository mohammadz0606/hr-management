import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../helper/icons_image.dart';
import '../../screens/home.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

  int currentIndex = 0;

  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(IconsImage.home)),
      label: '',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(IconsImage.file)),
      label: '',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(IconsImage.bar)),
      label: '',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(IconsImage.person)),
      label: '',
      backgroundColor: Colors.white,
    ),
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];


  void onChangeItem(int index) {
    currentIndex = index;
    emit(NavigationOnChangeItem());
  }

}
