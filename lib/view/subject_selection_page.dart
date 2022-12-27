import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_colors.dart';
import '../utils/app_constants.dart';
import 'level_selection_page.dart';

class SubjectSelectionPage extends StatefulWidget {
  const SubjectSelectionPage({Key? key}) : super(key: key);

  @override
  State<SubjectSelectionPage> createState() => _SubjectSelectionPageState();
}

class _SubjectSelectionPageState extends State<SubjectSelectionPage> {
  List<String> subjectsList = [
    "English",
    "General Knowledge",
    "Maths",
    "Science",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.darkBlue,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Select your Subject",
          style: GoogleFonts.cabin(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: AppColors.darkBlue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Please select the subject to proceed",
              style: GoogleFonts.cabin(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subjectsList.length,
                itemBuilder: (context, position) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LevelSelectionPage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          // height: 70,
                          decoration: BoxDecoration(
                              gradient: AppColors.yellowGradient,
                              borderRadius: AppDimension.borderRadius15),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              subjectsList[position],
                              style: GoogleFonts.cabin(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                      // Card(
                      //   color: Colors.lightBlue,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(20.0),
                      //     child: Text(
                      //       position.toString(),
                      //       style: TextStyle(fontSize: 22.0),
                      //     ),
                      //   ),
                      // ),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
