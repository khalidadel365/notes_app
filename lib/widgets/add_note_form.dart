import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import '../cubits/add_note_cubit/add_note_cubit.dart';
import '../cubits/add_note_cubit/add_note_states.dart';
import 'colors_listview.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
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
            onSaved: (value) {
              title = value;
            },
            validate: (value) {
              if (value?.isEmpty ?? true) {
                // true lw elvalue b null
                return 'Title is required';
              }
              else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Content',
            validate: (value) {
              if (value?.isEmpty ?? true) {
                // true lw elvalue b null
                return 'Content is required';
              }
              else {
                return null;
              }
            },
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
            maxLength: 180,
          ),
          SizedBox(
            height: 32,
          ),
          ColorsListView(),
          SizedBox(height: 32,),
          BlocBuilder<AddNoteCubit, AddNotesStates>(
            builder: (context, state) {
              return CustomButton(
                  text: 'Add',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedCurrentDate = DateFormat('dd-mm-yyyy').format(currentDate);
                      print('title: $title, subTitle: $subTitle');
                      BlocProvider.of<AddNoteCubit>(context).addNote(
                          NoteModel(
                              title: title!,
                              subTitle: subTitle!,
                              date: formattedCurrentDate,
                              color: Colors.cyan.value)
                      );
                    }
                    else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                  isLoading: state is AddNoteLoading ? true : false,
              );
            },
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
