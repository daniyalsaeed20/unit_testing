import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

customText({
  text: '...',
  fontSize = 16.0,
  textColor = Colors.black,
  fontWeight = FontWeight.normal,
  align = TextAlign.center,
  maxLines = 1,
  hasShadow = false,
}) {
  return Text(
    text == null ? "N/A" : text.toString(),
    style: TextStyle(
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: hasShadow ? 3 : 0,
          blurRadius: hasShadow ? 5 : 0,
          offset: hasShadow ? Offset(0, 2) : Offset.zero,
        ),
      ],
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: GoogleFonts.sora().fontFamily,
    ),
    textAlign: align,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
  );
}
