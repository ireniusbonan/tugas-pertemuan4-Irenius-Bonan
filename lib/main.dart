import 'package:flutter/material.dart';
import 'package:flutter_application_pertemuan4/pages/edit.profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EditProfile(),
    );
  }
}
