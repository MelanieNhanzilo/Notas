import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NoteCard extends StatelessWidget {
  final VoidCallback onTap;
  final QueryDocumentSnapshot<Object?> note;

  const NoteCard(this.onTap, this.note, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note['title'] != null ? note['title'] as String : 'No Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                note['color_id'] != null ? note['color_id'] as String : 'No Content',
                style: TextStyle(fontSize: 16),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Text(
                note['note_content'] != null ? note['note_content'] as String : 'No Content',
                style: TextStyle(fontSize: 16),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Text(
                note['content'] != null ? note['content'] as String : 'No Content',
                style: TextStyle(fontSize: 16),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),

              Text(
                note['creation_Date'] != null ? note['creation_Date'] as String : 'No Content',
                style: TextStyle(fontSize: 16),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
