import 'package:flutter/material.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({
    super.key,
     this.i, required this.data,
  });

  final int? i;
 final  Map<String,dynamic> data ;

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
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 15,
              child: Text("$i"),
            )
          ],
        ),
      ),
    );
  }
}
