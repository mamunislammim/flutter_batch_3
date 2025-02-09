import 'package:flutter/material.dart';
import 'package:flutter_batch_3/note_app/note_edit.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({
    super.key,
    this.i,
    required this.data,
  });

  final int? i;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 220,
        width: MediaQuery.sizeOf(context).width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "${data['created_at'].toString().substring(0, 16)}",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "${data['note']}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
                maxLines: 7,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                  child: Text("$i"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NoteEditScreen(
                          createdAt: data['created_at'],
                          note: data['note'],
                          index: i ?? 0,
                        ),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.edit,
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
