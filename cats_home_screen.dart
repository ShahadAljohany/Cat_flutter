// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/cat_card.dart';
import 'package:flutter_application_1/main.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Types of cats',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ))
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(cat: cat);
        },
      ),
    );
  }
}
