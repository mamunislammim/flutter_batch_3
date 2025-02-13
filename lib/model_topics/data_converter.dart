import 'dart:developer';

import 'package:flutter_batch_3/model_topics/model.dart';
import 'database.dart';

class DataConverter {

 Future<List<StudentModel1>> converterFun() async {
    await Future.delayed(const Duration(seconds: 3));
    List<StudentModel1> myList = [];
    for (var i in DatabaseList().studentInfo) {
      StudentModel1 model = StudentModel1.fromJson(i);
      myList.add(model);
    }
    log("======\${myList.length}===========");
    return myList;
  }
}
