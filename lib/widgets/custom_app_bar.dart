import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title ,style: const TextStyle(
          fontSize: 28,
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w500,
        ),
        ),
        const Spacer(),
        CustomIcon(icon: icon,),
      ],
    );
  }
}
