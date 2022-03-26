import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/domain/repository/note_repository.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_ui_event.dart';
import 'package:flutter_note_app/src/ui/colors.dart';

class AddEditNoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  AddEditNoteViewModel(this.repository);

  int _color = roseBud.value;

  int get color => _color;
  final _eventController = StreamController<AddEditNoteUiEvent>.broadcast();

  Stream<AddEditNoteUiEvent> get eventStream => _eventController.stream;

  void onEvent(AddEditNoteEvent event) {
    event.when(changeColor: _changeColor, saveNote: _saveNote);
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    if (title.isEmpty || content.isEmpty) {
      _eventController
          .add(const AddEditNoteUiEvent.showSnackBar('제목과 내용을 입력하세요'));
      return;
    }
    if (id == null) {
      await repository.insertNote(Note(
          title: title,
          color: _color,
          content: content,
          timestamp: DateTime.now().millisecondsSinceEpoch));
    } else {
      await repository.updateNote(Note(
          id: id,
          title: title,
          color: _color,
          content: content,
          timestamp: DateTime.now().millisecondsSinceEpoch));
    }

    _eventController.add(const AddEditNoteUiEvent.saveNote());
  }
}
