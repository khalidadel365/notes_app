import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
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
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                '${noteModel.title}',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.5,
              ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 16),
                child: Text(
                  noteModel.subTitle,style: TextStyle(
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
              noteModel.date,style: TextStyle(
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