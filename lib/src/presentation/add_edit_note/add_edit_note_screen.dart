import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:flutter_note_app/src/ui/colors.dart';
import 'package:provider/provider.dart';

class AddEditNoteScreen extends StatefulWidget {
  final Note? note;

  const AddEditNoteScreen({Key? key, this.note}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;
  final List<Color> noteColors = [
    roseBud,
    primRose,
    wisteria,
    skyBlue,
    illusion,
  ];

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }

    Future.microtask(() {
      final viewModel = context.read<AddEditNoteViewModel>();
      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(saveNote: () {
          Navigator.pop(context, true);
        }, showSnackBar: (String message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditNoteViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onEvent(AddEditNoteEvent.saveNote(
              widget.note == null ? null : widget.note!.id,
              _titleController.text,
              _contentController.text));
        },
        child: const Icon(Icons.save),
      ),
      body: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, bottom: 16.0, top: 64.0),
        color: Color(widget.note != null ? widget.note!.color : viewModel.color),
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: noteColors
                  .map(
                    (color) => InkWell(
                      onTap: () {
                        viewModel
                            .onEvent(AddEditNoteEvent.changeColor(color.value));
                      },
                      child: _buildBgColor(
                          color: color,
                          selected: viewModel.color == color.value),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: _titleController,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: darkGray),
              decoration: const InputDecoration(
                  hintText: '제목을 입력하세요', border: InputBorder.none),
            ),
            TextField(
              controller: _contentController,
              maxLength: null,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: darkGray),
              decoration: const InputDecoration(
                  hintText: '내용을 입력하세요', border: InputBorder.none),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBgColor({required Color color, required bool selected}) {
    return Container(
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        border: selected ? Border.all(color: Colors.black, width: 1.0) : null,
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 1.0)
        ],
      ),
      child: selected ? const Icon(Icons.check) : null,
    );
  }
}
