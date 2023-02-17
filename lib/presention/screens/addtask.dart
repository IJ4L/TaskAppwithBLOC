import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addtask extends StatelessWidget {
  const Addtask({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              '╳',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
            child: Text(
              '⋮',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.25,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat app with bloc',
                    style: GoogleFonts.dmSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: h * 0.015),
                  _textMaker('Assigned To', 'Due Date', 0.3, w),
                  SizedBox(height: h * 0.01),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(h * 0.04 / 2),
                        child: Image.network(
                          "https://i.ibb.co/S32HNjD/no-image.jpg",
                          width: h * 0.04,
                          height: h * 0.04,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: h * 0.005),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(h * 0.04 / 2),
                        child: Image.network(
                          "https://i.ibb.co/S32HNjD/no-image.jpg",
                          width: h * 0.04,
                          height: h * 0.04,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.33,
                      ),
                      Text(
                        'Jumat, 13 july 2023',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  _textMaker('Priority', 'Status', 0.378, w),
                  SizedBox(height: h * 0.01),
                  Row(
                    children: [
                      Text(
                        'Urgent',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.375,
                      ),
                      Text(
                        'Backlog',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.015),
          Container(
            height: h * 0.2,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Padding _textMaker(
      String title1, String title2, double jarak, double sizeHp) {
    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title1,
            style: GoogleFonts.dmSans(
              color: Colors.black.withOpacity(0.3),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: sizeHp * jarak,
          ),
          Text(
            title2,
            style: GoogleFonts.dmSans(
              color: Colors.black.withOpacity(0.3),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
