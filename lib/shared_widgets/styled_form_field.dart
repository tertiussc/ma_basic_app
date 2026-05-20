import 'package:flutter/material.dart';

class StyledFormField extends StatelessWidget {
  const StyledFormField({super.key, required this.label, required this.icon, this.obscureText = false, this.textInputType = TextInputType.text});

  // Set form field decorations
  final String label;
  final IconData icon;
  final bool obscureText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(prefixIcon: Icon(icon), labelText: label, hint: Text(label), border: OutlineInputBorder()),
      ),
    );
  }
}
