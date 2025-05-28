import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 7,
        itemBuilder: (context,index){
          return NoteItem();
        },separatorBuilder: (context,index){
        return SizedBox(height: 10,);
      },),
    );
  }
}
