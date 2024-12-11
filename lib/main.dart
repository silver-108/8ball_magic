// ignore_for_file: camel_case_types
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const magic_8BAll());
}

class magic_8BAll extends StatefulWidget {
  const magic_8BAll({super.key});

  @override
  State<magic_8BAll> createState() => _magic_8BAllState();
}

class _magic_8BAllState extends State<magic_8BAll> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade400.withOpacity(0.9),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade300,
          title: Text(
            "Ask Me Anything",
            style: GoogleFonts.comicNeue(
                fontSize: 40, fontWeight: FontWeight.w800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(4) + 1;
                  });
                },
                child: Image(
                  image: AssetImage(
                    "assets/images/ball$ballNumber.png",
                  ),
                  height: 300,
                  width: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
