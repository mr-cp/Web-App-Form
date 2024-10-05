import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final double height;

  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.maxLines,
      this.contentPadding,
      this.height = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        style: GoogleFonts.raleway(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.08,
        ),
        cursorColor: Colors.grey[400],
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 234, 232, 232)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 234, 232, 232)),
          ),
          errorStyle: GoogleFonts.raleway(
            fontSize: 9,
            color: Colors.red[400],
            fontWeight: FontWeight.w600,
            letterSpacing: 0.08,
          ),
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(vertical: 6, horizontal: 12.0),
          hintText: hintText,
          hintStyle: GoogleFonts.raleway(
            fontSize: 9,
            color: Colors.grey[400],
            fontWeight: FontWeight.w600,
            letterSpacing: 0.08,
          ),
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 234, 232, 232)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
