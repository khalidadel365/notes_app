import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>EditNoteView()));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16,right: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Flutter Tips',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.5,
              ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 16),
                child: Text(
                  'Build your career with tharwat',style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 17
                ),),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 24,
                    )
                ),
              ),
            ),
            Text(
              'May 20, 2025',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 15
            ),
            )
          ],
        ),
      ),
    );
  }
}