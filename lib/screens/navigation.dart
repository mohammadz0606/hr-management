import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_management/cubits/navigation/navigation_cubit.dart';

import '../widgets/app_bar.dart';
import '../custom_widgets/button_nav_bar.dart';

class NavigationScreen extends StatelessWidget {
  static const String route = 'navigation_screen';

  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BlocBuilder<NavigationCubit, NavigationState>(
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
