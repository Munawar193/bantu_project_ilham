import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:so_je/shared/thame.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.color = kYelloColor,
    this.textcolor = kGreenColor,
  }) : super(key: key);

  final String title;
  final double width;
  final Function() onPressed;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: kGreenColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: SizedBox(
        height: 53,
        width: width,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
