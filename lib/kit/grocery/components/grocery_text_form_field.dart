import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fly_kits/kit/grocery/utils/grocery_colors.dart';

class GroceryTextFormField extends StatelessWidget {
  const GroceryTextFormField({
    super.key,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.validator,
    this.inputFormatters,
    required this.label,
    this.obscureText = false,
  });
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        filled: true,
        fillColor: Colors.grey.shade100,
        labelText: label,
        labelStyle: TextStyle(
          color: GroceryColors.titleLight,
          fontSize: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: GroceryColors.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
