import 'package:flutter/material.dart';
import 'package:quizmaker/app_colors.dart';
import 'package:quizmaker/utils/app_constants.dart';
import 'package:quizmaker/utils/app_images.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Spacer(),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(AppImages.oops),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Something went wrong.\n Please try again.",
                textAlign: TextAlign.center,
                style: GoogleFonts.cabin(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87),
              ),
              SizedBox(height: 150),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 50,
                height: 60,
                decoration: BoxDecoration(
                    gradient: AppColors.yellowGradient,
                    borderRadius: AppDimension.borderRadius10),
                child: Text(
                  "TryAgain,",
                  style: GoogleFonts.cabin(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
