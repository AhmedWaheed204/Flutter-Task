// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/component/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '(غسان مطر)أعمل الصح',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            CustomPic(
              text1: "Pub 1",
              loc: "Location 1",
              imag: AssetImage("assets/images/walker.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            CustomPic(
              text1: "Pub 2",
              loc: "Location 2",
              imag: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1d4pPYRP9TLdERtZQLsqGTr4_lr0Mdk4Y_73Jl6AM&s"),
            ),
            SizedBox(
              height: 10,
            ),
            CustomPic(
              text1: "Pub 3",
              loc: "Location 3",
              imag: AssetImage("assets/images/nutella.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
