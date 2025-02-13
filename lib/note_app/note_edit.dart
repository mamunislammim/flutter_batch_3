import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_batch_3/note_app/note_screen.dart';

class NoteEditScreen extends StatefulWidget {
  const NoteEditScreen(
      {super.key, required this.createdAt, required this.note, required this.index});

  final DateTime createdAt;
  final String note;
  final int index;

  @override
  State<NoteEditScreen> createState() => _NoteAddScreenState();
}

class _NoteAddScreenState extends State<NoteEditScreen> {
  TextEditingController noteController = TextEditingController();
  final _myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    noteController.text = widget.note;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Edit Your Note"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _myKey,
          child: Column(
            children: [
              TextFormField(
                controller: noteController,
                maxLines: 15,
                decoration: InputDecoration(
                  hintText: "Edit your note",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  fillColor: const Color(0xff272727),
                  hintStyle: const TextStyle(fontSize: 14),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value == null || value == "") {
                    return "Field can't be empty.";
                  } else if (value.length > 10) {
                    return "you can't enter more than 10 letters.";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // if (_myKey.currentState!.validate()) {
                  //   return;
                  // }
                  log("====wwwwww=====\${noteList.length}============");
                  Map<String, dynamic> noteData = {
                    "created_at": DateTime.now(),
                    "note": noteController.text
                  };

                  noteList.replaceRange(widget.index - 1, widget.index, [noteData]);

                  // noteList.removeAt(1);
                  // noteList.add(noteData);
                  //Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NoteScreen()));
                  log("=====eeee====\${noteList.length}============");
                },
                child: Card(
                  color: Color(0xff272727),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Update Note",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
