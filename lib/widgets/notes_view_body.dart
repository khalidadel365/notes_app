import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: const Column(
          children: [
            SizedBox(height: 40,),
            CustomAppBar(),
      ]),
    );
  }
}


