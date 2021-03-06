import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:flutter_note_app/src/presentation/notes/components/note_item.dart';
import 'package:flutter_note_app/src/presentation/notes/components/order_section.dart';
import 'package:flutter_note_app/src/presentation/notes/notes_event.dart';
import 'package:flutter_note_app/src/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your note',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                viewModel.onEvent(const NotesEvent.toggleOrderSection());
              },
              icon: const Icon(Icons.sort))
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? isSaved = await Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AddEditNoteScreen()));

          if (isSaved != null && isSaved) {
            viewModel.onEvent(const NotesEvent.loadNotes());
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        children: [
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: state.isOrderSectionVisible
                  ? OrderSection(
                      noteOrder: state.noteOrder,
                      onOrderChanged: (noteOrder) {
                        viewModel.onEvent(NotesEvent.changeOrder(noteOrder));
                      })
                  : Container()),
          ...state.notes
              .map(
                (note) => GestureDetector(
                  onTap: () async {
                    bool? isSaved = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddEditNoteScreen(
                          note: note,
                        ),
                      ),
                    );
                    if (isSaved != null && isSaved) {
                      viewModel.onEvent(const NotesEvent.loadNotes());
                    }
                  },
                  child: NoteItem(
                    note: note,
                    onTapDelete: () {
                      viewModel.onEvent(NotesEvent.deleteNote(note));
                      final snackBar = SnackBar(
                        content: const Text("????????? ?????????????????????"),
                        action: SnackBarAction(
                          label: '??????',
                          onPressed: () {
                            viewModel.onEvent(const NotesEvent.restoreNote());
                          },
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
