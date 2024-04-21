import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fly_kits/kit/blog/utils/blog_colors.dart';

class BlogFormField extends StatelessWidget {
  const BlogFormField({super.key, required this.controller, required this.icon, required this.hintText, this.validator, this.inputFormatters});
  final TextEditingController controller;
  final IconData icon;
  final String hintText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: BlogColors.titleLight.withOpacity(.6),
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: Icon(
            icon,
            size: 22,
            color: BlogColors.titleLight,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: BlogColors.primary,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
