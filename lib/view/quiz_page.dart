import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizmaker/models/question_model.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

QuestionModel questionModel = QuestionModel();

class _QuizPageState extends State<QuizPage> {
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/images/maths.json');
    Map<String, dynamic> userMap = jsonDecode(response);
    var user = QuestionModel.fromJson(userMap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        Spacer(),
        GestureDetector(
          onTap: () {
            readJson();
          },
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.deepPurple,
            ),
          ),
        ),
        Spacer(),
        // Container(
        //   child: Text(questionModel.questions),
        // )
      ])),

      //   body: Container(
      // child: Expanded(
      //   child: ListView.builder(
      //       itemCount: questionModel.questions!.length,
      //       itemBuilder: (context, index) {
      //         return Column(
      //           children: [
      //             GestureDetector(
      //               onTap: () {
      //                 readJson();
      //               },
      //               child: Container(
      //                 width: 50,
      //                 height: 50,
      //                 color: Colors.deepPurple,
      //               ),
      //             ),
      //             Container(
      //               child: Text(_pokemons[0]),
      //             ),
      //           ],
      //         );
      //   //       }),
      //   // ),
      // ));
    );
  }
}
