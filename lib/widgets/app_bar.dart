import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/images.dart';

PreferredSizeWidget buildAppBar(BuildContext context,{double? leadingWidth}) {
  return AppBar(
    leadingWidth: leadingWidth ?? 0,
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
      const SizedBox(width: 7),
      CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        backgroundImage: const AssetImage(Images.personPlaceHolder),
      ),
      const SizedBox(width: 10),
    ],
  );
}