import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/domain/repository/note_repository.dart';

class UpdateNoteUseCase {
  final NoteRepository repository;

  UpdateNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.updateNote(note);
  }
}
