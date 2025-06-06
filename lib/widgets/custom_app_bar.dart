import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../constants.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, required this.icon,this.onPressed});
  final String title;
  final IconData icon ;
  final void Function()? onPressed;
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
        CustomIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}
