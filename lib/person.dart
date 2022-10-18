import 'package:flutter/cupertino.dart';

class Person with ChangeNotifier {
  //attribute
  String name;
  int age;
  //constructor
  Person({
    required this.name,
    required this.age,
  });

  void increaseAge() {
    age++;
    notifyListeners();
  }
}
