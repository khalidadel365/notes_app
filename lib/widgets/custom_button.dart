import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text,required this.onPressed,required this.isLoading});
  String text;
  VoidCallback onPressed;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8)
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: isLoading ? SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator(
              color: Colors.grey.shade900,
            ),
          ):Text(
            text,style: TextStyle(
            fontSize: 18,
            color: Colors.grey[800],
            fontWeight: FontWeight.w500,
          ),
          ),
        ),

      ),
    );
  }
}
