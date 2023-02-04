// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomPic extends StatelessWidget {
  CustomPic({
    Key? key,
    required this.imag,
    required this.text1,
    required this.loc,
  }) : super(key: key);
  final ImageProvider<Object> imag;
  final String text1;
  final String loc;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: Colors.white,
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Image(
              image: imag,
              height: 150,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    loc,
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
