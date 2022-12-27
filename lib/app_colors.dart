import 'package:flutter/material.dart';
import 'package:quizmaker/utils/hex_color.dart';

class AppColors {
  static Color darkYellow = HexColor("f78a0b");
  static Color mediumYellow = HexColor("fbb30c");
  static Color lightYellow = HexColor("fcdc0d");
  static Color darkBlue = HexColor("07d2fa");
  static Color mediumBlue = HexColor("2bdcf9");
  static Color lightBlue = HexColor("41ecf8");
  static Color lightGrey = HexColor("D0CECEFF");
  static Color green = HexColor("32CD32");
  static Color red = HexColor("E35335");
  static Color yellow = HexColor("D0CECEFF");

  static Color white = Colors.white;
  static Color grey = HexColor("E5E4E2");

  static LinearGradient yellowGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 0.9),
    colors: <Color>[
      AppColors.lightYellow,
      AppColors.mediumYellow,
      AppColors.darkYellow
    ],
    tileMode: TileMode.mirror,
  );
  static LinearGradient greyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 0.9),
    colors: <Color>[AppColors.lightGrey, AppColors.grey],
    tileMode: TileMode.mirror,
  );
  static LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 0.9),
    colors: <Color>[
      AppColors.lightBlue,
      AppColors.mediumBlue,
      AppColors.darkBlue
    ],
    tileMode: TileMode.mirror,
  );
  static LinearGradient greenGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 0.9),
    colors: <Color>[
      AppColors.green,
      Colors.green,
    ],
    tileMode: TileMode.mirror,
  );

  static LinearGradient redGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: const Alignment(0.8, 0.9),
    colors: <Color>[
      AppColors.red,
      Colors.redAccent,
    ],
    tileMode: TileMode.mirror,
  );
}
