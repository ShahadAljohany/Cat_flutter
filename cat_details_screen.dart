// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/cat_details.dart';
import 'package:flutter_application_1/model/cat.dart';

class catDetailsScreen extends StatelessWidget {
  final Cat cat;
  const catDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(cat.name, style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.purple,
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),
    );
  }
}
