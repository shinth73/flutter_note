import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/domain/repository/note_repository.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  AddEditNoteViewModel(this.repository);

  int _color = Colors.orange.value;

  int get color => _color;

  void onEvent(AddEditNoteEvent event) {
    event.when(changeColor: _changeColor, saveNote: _saveNote);
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (id == null) {
      await repository.insertNote(Note(
          title: title,
          color: _color,
          content: content,
          timestamp: DateTime.now().microsecondsSinceEpoch));
    } else {
      await repository.updateNote(Note(
          id: id,
          title: title,
          color: _color,
          content: content,
          timestamp: DateTime.now().microsecondsSinceEpoch));
    }
  }
}
