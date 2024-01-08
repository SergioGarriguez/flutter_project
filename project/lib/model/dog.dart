import 'dart:convert';
import 'dart:io';

class Dog {
  List<String>? dog_list;

  Dog.fromJson(Map<String, dynamic> json) : dog_list = json["message"]["dog"];

  Load() {
    Future<List<Map>> readJsonFile(String filePath) async {
      var input = await File(filePath).readAsString();
      var map = jsonDecode(input);
      return map['dogList'];
    }
  }
}
