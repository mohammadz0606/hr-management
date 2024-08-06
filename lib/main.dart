import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_management/cubits/actions/my_actions_cubit.dart';
import 'package:hr_management/cubits/navigation/navigation_cubit.dart';
import 'package:hr_management/cubits/remaining_balance/remaining_balance_cubit.dart';
import 'package:hr_management/helper/routs.dart';

import 'cubits/attendance/attendance_cubit.dart';
import 'cubits/leave_request/leave_request_cubit.dart';
import 'helper/colors.dart';
import 'screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    _setPreferredOrientations(),
  ]);
  _setSystemUIOverlayStyle();
  runApp(const HRManagement());
}

Future<void> _setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}

void _setSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
}

class HRManagement extends StatelessWidget {
  const HRManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (context) => RemainingBalanceCubit(),
        ),
        BlocProvider(
          create: (context) => MyActionsCubit(),
        ),
        BlocProvider(
          create: (context) => AttendanceCubit(),
        ),
        BlocProvider(
          create: (context) => LeaveRequestCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.route,
        routes: appRoutes,
        theme: ThemeData.light().copyWith(
          brightness: Brightness.light,
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
          colorScheme: ThemeData.light()
              .colorScheme
              .copyWith(secondary: AppColors.secondary),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: false,
            surfaceTintColor: Colors.transparent,
            scrolledUnderElevation: 0,
            iconTheme: IconThemeData(
              color: AppColors.primary,
            ),
            backgroundColor: AppColors.scaffoldBackground,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
            ),
          ),
          dividerColor: AppColors.thirdColor,
          dividerTheme: const DividerThemeData(
            color: AppColors.thirdColor,
            thickness: 1.2,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                AppColors.primary,
              ),
              foregroundColor: WidgetStateProperty.all(
                Colors.white,
              ),
              textStyle: WidgetStateProperty.all(
                const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
