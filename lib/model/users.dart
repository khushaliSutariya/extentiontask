class Users {
  String? name;
  int? age;
  bool? islog;

  Users({this.name , this.age,this.islog});

  Users.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    return data;
  }
}