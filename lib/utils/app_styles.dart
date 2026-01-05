import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppStyles {
  static final TextStyle styleRegular16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );
  static final TextStyle styleRegularSelected16 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );
  static final TextStyle styleRegularWhite16 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );

  static final TextStyle styleMedium16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
  );

  static final TextStyle semiBold16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
  );
  static final TextStyle semiBold20 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
  );
  static final TextStyle regularGrey12 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
  );
  static final TextStyle semiBold24 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
  );

  double getResponsiveFontSize(BuildContext context, {required double size}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveSize = size * scaleFactor;
    double lowerLimit = size * .8;
    double upperLimit = size * 1.2;

    return responsiveSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    var dispatcher = PlatformDispatcher.instance;
    var physicalWidth = dispatcher.views.first.physicalSize.width;
    var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    var width = physicalWidth / devicePixelRatio;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
