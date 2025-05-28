import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
          onPressed: (){
      },child: Icon(Icons.add,color: Colors.black,),),
    );
  }
}

