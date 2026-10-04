import 'dart:convert';

class User {
  final int id;
  final String fullName;
  final String email;
  User({required this.id, required this.fullName, required this.email});
  factory User.fromjson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullName: json['fullName'],
      email: json['email'],
    );
  }
}

main() {
  String jsonstring =
      '{"id": 50, "fullName": "Rachid Oumansour", "email": "rachid@test.com"}';
  Map<String, dynamic> userMap = jsonDecode(jsonstring);
  User user = User.fromjson(userMap);
  print("hello ${user.fullName} your email: ${user.email}");
}
