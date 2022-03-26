import 'package:flutter_note_app/src/domain/use_case/add_note_use_case.dart';
import 'package:flutter_note_app/src/domain/use_case/delete_note_use_case.dart';
import 'package:flutter_note_app/src/domain/use_case/get_note_use_case.dart';
import 'package:flutter_note_app/src/domain/use_case/get_notes_use_case.dart';

class UseCases {
  final AddNoteUseCase addNote;
  final DeleteNoteUseCase deleteNote;
  final GetNoteUseCase getNote;
  final GetNotesUseCase getNotes;

  UseCases(
      {required this.addNote,
      required this.deleteNote,
      required this.getNote,
      required this.getNotes});
}
