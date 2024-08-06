import 'dart:io';

import 'package:flutter/material.dart';

import '../helper/colors.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final dynamic value;
  final List<DropdownMenuItem> items;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      dropdownColor: Colors.white,
      alignment: Alignment.center,
      iconEnabledColor: AppColors.secondary,
      iconDisabledColor: AppColors.secondary,
      icon: Platform.isIOS
          ? const Icon(Icons.keyboard_arrow_down)
          : const Icon(Icons.arrow_drop_down),
      items: items,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 13,
        color: AppColors.secondary,
      ),
      //isDense: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        isDense: true,
        border: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
      ),
    );
  }

  InputBorder _buildOutlineInputBorder() {
    return const OutlineInputBorder(
      //borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(
        color: AppColors.secondary,
        width: 1,
      ),
    );
  }
}
