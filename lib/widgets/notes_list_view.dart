import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: 7,
          itemBuilder: (context,index){
            return NoteItem();
          },separatorBuilder: (context,index){
          return SizedBox(height: 10,);
        },),
      ),
    );
  }
}
