import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskapp/presention/widget/mybutton.dart';
import 'package:taskapp/presention/widget/myinfobar.dart';
import 'package:taskapp/presention/widget/myprojectlist.dart';
import 'package:taskapp/presention/widget/mytextfield.dart';
import 'package:taskapp/shared/constans/string.dart';
import 'package:taskapp/shared/style/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: GoogleFonts.dmSans(),
                      ),
                      Text(
                        'Jovanca',
                        style: GoogleFonts.dmSans(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.06,
                    width: h * 0.06,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(h * 0.06 / 2),
                      child: Image.network(
                        "https://i.ibb.co/S32HNjD/no-image.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Row(
                children: [
                  Container(
                    height: h * 0.22,
                    width: w * 0.44,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: h * 0.05,
                          width: h * 0.05,
                          decoration: BoxDecoration(
                            color: Mycolors.orange,
                            borderRadius: BorderRadius.circular(h * 0.08 / 2),
                          ),
                          child: const Center(
                            child: Icon(Icons.checklist_outlined),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Text(
                          '140',
                          style: GoogleFonts.dmSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Project Complete',
                          style: GoogleFonts.dmSans(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: w * 0.025,
                  ),
                  Column(
                    children: [
                      Myinfobar(
                        angka: '8',
                        title: 'Inquiry',
                        clr: Mycolors.blue,
                        icon: Icons.coffee_maker_outlined,
                      ),
                      SizedBox(
                        height: h * 0.015,
                      ),
                      Myinfobar(
                        angka: '78',
                        title: 'On Going',
                        clr: Mycolors.purple,
                        icon: Icons.upcoming_outlined,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Text(
                'Recent project',
                style: GoogleFonts.dmSans(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: h * 0.015,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const Myprojectlist(),
                  separatorBuilder: (_, index) => const SizedBox(height: 12.0),
                  itemCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) {
            return SingleChildScrollView(
              child: Container(
                height: h * 0.4,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.006,
                      width: w * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      'New Project',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Container(
                      height: h * 0.001,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.08),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    const MyTextfield(
                      hint: 'Project Name',
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      height: h * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          width: 2,
                          color: Mycolors.blueB,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Add Team +',
                          style: GoogleFonts.dmSans(
                            color: Mycolors.blueB,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.016,
                    ),
                    Mybutton(
                      title: 'Create project',
                      to: addtask,
                    )
                  ],
                ),
              ),
            );
          },
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
