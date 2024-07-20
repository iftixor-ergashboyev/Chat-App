import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {

   MyTextField({super.key,
     required this.hinText,
     required this.obscureText,
     required this.controller});
  final String hinText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(

        obscureText: widget.obscureText,
        style: GoogleFonts.ubuntu(color: CupertinoColors.black),
        decoration:  InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CupertinoColors.systemGrey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: CupertinoColors.black)
          ),
          fillColor: CupertinoColors.white,
          filled: true,
          hintText: widget.hinText,
          hintStyle: GoogleFonts.ubuntu(color: CupertinoColors.systemGrey)
        ),
      ),
    );
  }
}
