import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_batch_3/note_app/note_screen.dart';
import 'package:flutter_batch_3/note_app/widgets/custom_searchbar.dart';

class NoteAddScreen extends StatefulWidget {
  const NoteAddScreen({super.key});

  @override
  State<NoteAddScreen> createState() => _NoteAddScreenState();
}

class _NoteAddScreenState extends State<NoteAddScreen> {
  TextEditingController noteController = TextEditingController();
  final _myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Add Your Note"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _myKey,
          child: Column(
            children: [
              TextFormField(
                controller: noteController,
                maxLength: 10,
                maxLines: 15,
                decoration: InputDecoration(
                  hintText: "Add your note",
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
                  log("====wwwwww=====${noteList.length}============");
                  Map<String,dynamic> noteData = {
                    "created_at" : DateTime.now(),
                    "note" : noteController.text
                   };

                   noteList.add(noteData);
                   //Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  NoteScreen()));
                  log("=====eeee====${noteList.length}============");
                },
                child: Card(
                  color: Color(0xff272727),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Save Note",
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

// class AddNoteTextFiledWidget extends StatelessWidget {
//   const AddNoteTextFiledWidget({
//     super.key, required this.textController,
//   });
//
//   final TextEditingController textController;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: textController,
//      maxLength: 10,
//       maxLines: 15,
//       decoration: InputDecoration(
//         hintText: "Add your note",
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//         fillColor: const Color(0xff272727),
//         hintStyle: const TextStyle(fontSize: 14),
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       validator: (value) {
//         if (value == null || value == "") {
//           return "Field can't be empty.";
//         } else if (value.length > 10) {
//           return "you can't enter more than 10 letters.";
//         }
//         return null;
//       },
//     );
//   }
// }
