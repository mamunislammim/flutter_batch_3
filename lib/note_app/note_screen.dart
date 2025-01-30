import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/note_app/widgets/custom_searchbar.dart';
import 'package:flutter_batch_3/note_app/widgets/note_card.dart';
import 'note_add.dart';

List<Map<String, dynamic>> noteList = [
  {"created_at": DateTime.now(), "note": "_"}
];

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Write_"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomSearchbarWidget(),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: noteList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: .8),
                  itemBuilder: (context, index) {
                    return NoteCardWidget(
                      i: index + 1,
                      data: noteList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NoteAddScreen()));
            },
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat);
  }
}
