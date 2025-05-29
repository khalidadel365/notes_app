import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 34),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Title',
              maxLines: 1,
              maxLength: 50,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'Content',
              maxLines: 5,
              maxLength: 180,
            ),
            SizedBox(height: 50,),
            CustomButton(
                text: 'Add',
                onPressed: (){

                }),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
