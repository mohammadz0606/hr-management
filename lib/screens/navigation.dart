import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hr_management/cubits/navigation/navigation_cubit.dart';
import 'package:hr_management/helper/images.dart';

import '../widgets/button_nav_bar.dart';

class NavigationScreen extends StatelessWidget {
  static const String route = 'navigation_screen';

  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: SvgPicture.asset(
          Images.logo,
          fit: BoxFit.cover,
          width: 150,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
          const SizedBox(width: 5),
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            backgroundImage: const AssetImage(Images.personPlaceHolder),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: BlocBuilder<NavigationCubit,NavigationState>(
        builder: (context, state) {
          return BlocProvider.of<NavigationCubit>(context)
              .screens[BlocProvider.of<NavigationCubit>(context).currentIndex];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return CustomButtonNavBar(
            onTap: (value) =>
                BlocProvider.of<NavigationCubit>(context).onChangeItem(value),
            currentIndex:
                BlocProvider.of<NavigationCubit>(context).currentIndex,
            items: BlocProvider.of<NavigationCubit>(context).items,
          );
        },
      ),
    );
  }
}
