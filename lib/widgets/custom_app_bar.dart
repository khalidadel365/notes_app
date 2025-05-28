import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',style: TextStyle(
          fontSize: 28,
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w500,
        ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
