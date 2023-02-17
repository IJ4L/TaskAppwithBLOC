import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/style/colors.dart';

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  Mybutton({
    super.key,
    required this.title,
    required this.to,
  });

  String title;
  dynamic to;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.06,
      width: double.infinity,
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        color: Mycolors.blueB,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, to);
          },
          borderRadius: BorderRadius.circular(12.0),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.dmSans(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
