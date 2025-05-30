import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
        fontFamily: kFontFamily,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.grey[800], // Highlight color
          cursorColor: kPrimaryColor,    // Cursor color
          selectionHandleColor: kPrimaryColor, // Handle color
        ),
      ),

    );
  }
}

