import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/domain/repository/note_repository.dart';
import 'package:flutter_note_app/src/presentation/notes/notes_event.dart';
import 'package:flutter_note_app/src/presentation/notes/notes_state.dart';

class NotesViewModel with ChangeNotifier {
  final NoteRepository repository;

  NotesState _state = const NotesState(notes: []);

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.repository);

  void onEvent(NotesEvent event) {
    event.when(
        loadNotes: _loadNotes,
        deleteNote: _deleteNotes,
        restoreNote: _restoreNotes);
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNotes(Note note) async {
    await repository.deleteNote(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNotes() async {
    if (_recentlyDeletedNote != null) {
      await repository.insertNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;
    }
    await _loadNotes();
  }
}
