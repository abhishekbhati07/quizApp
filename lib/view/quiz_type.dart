import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizmaker/app_colors.dart';
import 'package:quizmaker/utils/app_constants.dart';
import 'package:quizmaker/view/error_page.dart';
import 'package:quizmaker/view/quiz_page.dart';

import '../models/question_model.dart';

class QuizType extends StatefulWidget {
  const QuizType({Key? key}) : super(key: key);

  @override
  State<QuizType> createState() => _QuizTypeState();
}

var temp;

class _QuizTypeState extends State<QuizType> {
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/images/maths.json');
    Map<String, dynamic> userMap = jsonDecode(response);
    var user = QuestionModel.fromJson(userMap);
    temp = user;
  }

  List<String> quizType = [
    "10 Questions",
    "20 Questions",
    "30 Questions",
    "40 Questions",
  ];

  @override
  void initState() {
    readJson();
    // TODO: implement initState
    super.initState();
  }

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
          "Select Quiz Type",
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
              "Please select Quiz Type to proceed",
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
                itemCount: quizType.length,
                itemBuilder: (context, position) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          if (temp.toString().isEmpty) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ErrorPage()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuizPage()));
                          }
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
                              quizType[position],
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
