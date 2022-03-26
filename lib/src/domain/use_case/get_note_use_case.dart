import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/domain/repository/note_repository.dart';

class GetNoteUseCase {
  final NoteRepository repository;

  GetNoteUseCase(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}
