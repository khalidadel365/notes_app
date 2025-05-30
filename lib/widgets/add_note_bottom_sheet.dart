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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title,subTitle;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Title',
            maxLines: 1,
            maxLength: 50,
            onSaved: (value){
              title = value;
            },
            validate: (value){
              if(value?.isEmpty ?? true) {
                // true lw elvalue b null
                return 'Title is required';
              }
              else{
                return null;
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Content',
            validate: (value){
              if(value?.isEmpty ?? true) {
                // true lw elvalue b null
                return 'Content is required';
              }
              else{
                return null;
              }
            },
            onSaved: (value){
              subTitle = value;
            },
            maxLines: 5,
            maxLength: 180,
          ),
          SizedBox(height: 50,),
          CustomButton(
              text: 'Add',
              onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }
                else{
                  autovalidateMode = AutovalidateMode.always;
                }
              }),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
