import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.maxLength,this.maxLines,this.validate,this.hintText,this.onChange,this.onSubmit,this.inputType,this.obsecureText = false, this.onSaved});
  String? hintText;
  bool obsecureText;
  Function(String)? onChange;
  Function(String)? onSubmit;
  TextInputType? inputType;
  FormFieldValidator? validate;
  final int? maxLines;
  final int? maxLength;
  final FormFieldSetter<String>? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validate,
      keyboardType: inputType,
      obscureText: obsecureText,
      onChanged: onChange,
      maxLines: maxLines,
      maxLength: maxLength,
      cursorColor: kPrimaryColor,
      style: TextStyle(
        color: Colors.white,
      ), //input style
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: kPrimaryColor
          ),
          borderRadius: BorderRadius.circular(10 ),

        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w400
        ),
      ),
    );
  }
}
