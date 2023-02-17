import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Myinfobar extends StatelessWidget {
  Myinfobar({
    super.key,
    required this.angka,
    required this.title,
    required this.clr,
    required this.icon,
  });

  String angka;
  String title;
  Color clr;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.1,
      width: w * 0.44,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                angka,
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.dmSans(),
              )
            ],
          ),
          Container(
            height: h * 0.05,
            width: h * 0.05,
            decoration: BoxDecoration(
              color: clr,
              borderRadius: BorderRadius.circular(h * 0.08 / 2),
            ),
            child: Center(
              child: Icon(icon),
            ),
          ),
        ],
      ),
    );
  }
}
