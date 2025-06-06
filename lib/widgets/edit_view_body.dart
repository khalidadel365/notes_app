import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key,required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<GetNotesCubit>(context).getNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50,),
          CustomTextFormField(
            hintText: widget.note.title,
            maxLines: 1,
            maxLength: 50,
            onChange: (value){
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: widget.note.subTitle,
            maxLines: 5,
            maxLength: 180,
            onChange: (value){
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
