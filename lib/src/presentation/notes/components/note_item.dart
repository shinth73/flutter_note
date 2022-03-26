import 'package:flutter/material.dart';
import 'package:flutter_note_app/src/domain/model/note.dart';
import 'package:flutter_note_app/src/ui/colors.dart';
import 'package:intl/intl.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  final Function? onTapDelete;

  const NoteItem({Key? key, required this.note, this.onTapDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(note.color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    note.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .apply(color: darkGray),
                  ),
                  Text(
                    DateFormat('yy년 M월 d일').format(
                        DateTime.fromMillisecondsSinceEpoch(note.timestamp)),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .apply(color: darkGray),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Divider(
                    thickness: 1,
                    height: 1,
                    color: darkGray.withOpacity(0.3),
                  )),
              Text(note.content,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .apply(color: darkGray))
            ],
          ),
        ),
        Positioned(
            bottom: 28.0,
            right: 8.0,
            child: GestureDetector(
                onTap: () {
                  onTapDelete?.call();
                },
                child: const Icon(Icons.delete)))
      ],
    );
  }
}
