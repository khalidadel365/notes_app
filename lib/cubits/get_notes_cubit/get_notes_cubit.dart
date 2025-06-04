import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_states.dart';
import 'package:notes_app/models/note_model.dart';


class GetNotesCubit extends Cubit<GetNotesStates>{
  GetNotesCubit() : super(GetNotesInitial());
  bool isLoading = false;
  getNotes()async{
    isLoading = true;
    //because the mehod not future
    //emit(GetNotesLoading());
    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      isLoading = false;
      emit(GetNotesSuccess(notesBox.values.toList()));
    }catch(e){
      isLoading = false;
      emit(GetNotesFailure(e.toString()));
    }
  }
}