class StudentModel1 {
  int? id;
  String? name;
  String? dep;
  String? sec;

  StudentModel1({this.id, this.name, this.dep, this.sec});

  // data fetch from server/ database
  StudentModel1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dep = json['dep'];
    sec = json['sec'];
  }
}
