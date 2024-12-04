import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyTextfield(
          controller: TextEditingController(), // Provide a controller here
          hintText: "Enter text", // Provide hint text
          obscureText: false, // Set obscureText as needed
        ),
      ),
    ),
  );
}

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  // Constructor with parameters for controller, hintText, and obscureText
  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        controller:
            controller, // Corrected the typo 'contorller' to 'controller'
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(8.0)), // Add border radius
            borderSide: BorderSide(
              color: Color.fromARGB(255, 190, 190, 190), // Light grey border
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(8.0)), // Add border radius
            borderSide: BorderSide(
              color: Color.fromARGB(255, 0, 0, 0), // Black border
            ),
          ),
          fillColor:
              const Color.fromARGB(255, 255, 255, 255), // White fill color
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ), // Hint text to display inside the TextField
        ),
      ),
    );
  }
}
