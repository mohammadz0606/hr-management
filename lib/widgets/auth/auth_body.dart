import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr_management/screens/navigation.dart';

import '../../helper/images.dart';
import '../button.dart';
import '../custom_text_field.dart';
import '../scroll_view.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildScrollView(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: MediaQuery.of(context).size.height * 0.17,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 50),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              Images.logo,
              fit: BoxFit.cover,
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 24),
            ),
          ),
          const CustomTextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: 'Email',
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            hintText: 'Password',
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              text: 'Login',
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.pushReplacementNamed(context, NavigationScreen.route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
