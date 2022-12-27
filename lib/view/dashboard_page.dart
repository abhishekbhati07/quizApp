import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizmaker/app_colors.dart';
import 'package:quizmaker/utils/app_images.dart';
import 'package:quizmaker/view/class_selection_page.dart';

import '../utils/app_constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String name = "Alex";
  String rank = "16/182";
  String points = "1582";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.menu_outlined,
            color: AppColors.mediumYellow,
            size: 30,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.lightBlue,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hi ${name}",
                        style: GoogleFonts.cabin(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Image.asset(
                          AppImages.hello,
                          fit: BoxFit.fitHeight,
                        ),
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let's Play",
                    style: GoogleFonts.cabin(
                        fontSize: 55,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width - 60) * 0.5,
                        height: 70,
                        decoration: BoxDecoration(
                            gradient: AppColors.greyGradient,
                            borderRadius: AppDimension.borderRadius10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppImages.ranking,
                                fit: BoxFit.fitHeight,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Rank",
                                    style: GoogleFonts.cabin(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    rank,
                                    style: GoogleFonts.cabin(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 60) * 0.5,
                        height: 70,
                        decoration: BoxDecoration(
                            gradient: AppColors.greyGradient,
                            borderRadius: AppDimension.borderRadius10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppImages.coins,
                                fit: BoxFit.fitHeight,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Points",
                                    style: GoogleFonts.cabin(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    points,
                                    style: GoogleFonts.cabin(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                        gradient: AppColors.yellowGradient,
                        color: Colors.indigo,
                        borderRadius: AppDimension.borderRadius7),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ClassSelectionPage()));
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 100,
              height: 60,
              decoration: BoxDecoration(
                  gradient: AppColors.blueGradient,
                  borderRadius: AppDimension.borderRadius15),
              child: Text(
                "Start Quiz",
                style: GoogleFonts.cabin(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
