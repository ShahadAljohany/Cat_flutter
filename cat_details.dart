// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(cat.imageLink),
        Text(
          cat.name,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        Text(
          'Origin: ${cat.origin}',
          style: TextStyle(fontSize: 18),
        ),
        Text('MaxWeight: ${cat.maxWeight}', style: TextStyle(fontSize: 18)),
        Text('MinWeight: ${cat.minWeight}', style: TextStyle(fontSize: 18)),
        Text('Length: ${cat.length}', style: TextStyle(fontSize: 18))
      ],
    );
  }
}
