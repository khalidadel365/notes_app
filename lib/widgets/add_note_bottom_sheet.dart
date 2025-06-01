import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/add_note_cubit/add_note_states.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 34),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNotesStates>(
          listener: (context, state) {
            if(state is AddNoteFailure){
              print('failed ${state.errorMessage}');
            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: AddNoteCubit().isLoading,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}


