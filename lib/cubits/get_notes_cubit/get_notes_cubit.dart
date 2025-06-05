import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_states.dart';
import 'package:notes_app/models/note_model.dart';


class GetNotesCubit extends Cubit<GetNotesStates>{
  GetNotesCubit() : super(GetNotesInitial());
  bool isLoading = false;
  List<NoteModel>? notes;
  getNotes()async{
    isLoading = true;
    //because the mehod not future
    //emit(GetNotesLoading());

      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
      emit(GetNotesSuccess());
      isLoading = false;
    }
  }