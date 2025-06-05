import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_states.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNotesCubit>(context).getNotes();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesStates>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<GetNotesCubit>(context).notes ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteItem(
                  noteModel: notes[index],
                );
              }, separatorBuilder: (context, index) {
              return SizedBox(height: 10,);
            },),
          ),
        );
      },
    );
  }
}
