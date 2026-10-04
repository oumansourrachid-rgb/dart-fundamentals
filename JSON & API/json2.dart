import 'dart:convert';

class SimpleItem {
  final int id;
  final String name;

  SimpleItem({required this.id, required this.name});

  factory SimpleItem.fromJson(Map<String, dynamic> json) {
    return SimpleItem(id: json['id'], name: json['name']);
  }
}

void main() {
 
}
