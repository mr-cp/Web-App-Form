import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;
  final Color color;
  final TextAlign textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 10.0,
    this.fontWeight = FontWeight.w400,
    this.letterSpacing = 0.0,
    this.color=Colors.black,
    this.textAlign = TextAlign.start
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,  softWrap: true, 
      overflow: TextOverflow.visible,
      style: GoogleFonts.raleway(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        color:color,
      ),
    );
  }
}
