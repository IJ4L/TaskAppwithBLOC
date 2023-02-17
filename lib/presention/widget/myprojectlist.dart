import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:taskapp/shared/style/colors.dart';

class Myprojectlist extends StatelessWidget {
  const Myprojectlist({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: h * 0.15,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Mycolors.grey,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: h * 0.1,
                  width: h * 0.006,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Mycolors.blueB,
                        Mycolors.purpleB,
                        Mycolors.pink,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: h * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chat app with bloc',
                      style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.004,
                    ),
                    Row(
                      children: [
                        Text(
                          'Mobile',
                          style: GoogleFonts.dmSans(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          ' • ',
                          style: GoogleFonts.dmSans(
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          '3 Days left',
                          style: GoogleFonts.dmSans(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 0.016,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: h * 0.08,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(h * 0.04 / 2),
                                child: Image.network(
                                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                                  width: h * 0.04,
                                  height: h * 0.04,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 16,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(h * 0.04 / 2),
                                  child: Image.network(
                                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                                    width: h * 0.04,
                                    height: h * 0.04,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(h * 0.04 / 2),
                                  child: Image.network(
                                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                                    width: h * 0.04,
                                    height: h * 0.04,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: h * 0.16,
                        ),
                        LinearPercentIndicator(
                          width: 100.0,
                          lineHeight: 8.0,
                          percent: 0.8,
                          progressColor: Mycolors.green,
                          backgroundColor: Mycolors.grey,
                          animation: true,
                          animationDuration: 1000,
                          leading: Text(
                            '78%',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
