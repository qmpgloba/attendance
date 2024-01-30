import 'package:flutter/material.dart';

class AuthBox extends StatelessWidget {
  const AuthBox({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.label,
  });

  final TextEditingController controller;
  final bool obscureText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        label: Text(label),
      ),
      obscureText: obscureText,
    );
  }
}