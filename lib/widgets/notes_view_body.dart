import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child:  Column(
          children: [
            SizedBox(height: 35,),
            CustomAppBar(
              title: 'Notes',
              icon: CupertinoIcons.search,
            ),
            NotesListView(),
      ]),
    );
  }
}




