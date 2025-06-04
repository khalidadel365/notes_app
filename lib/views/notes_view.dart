import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
          onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.grey.shade900,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),              ),
              builder: (context){
            return AddNoteBottomSheet();
          });
      },
          child: Icon(
            Icons.add,
            color: Colors.black
            ,),),
    );
  }
}


