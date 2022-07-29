import 'package:flutter/material.dart';

import '../../common/app_libraries.dart';

class AppShadows {
  static const List<BoxShadow> boxShadow = <BoxShadow>[
    BoxShadow(
      color: Color(0x29000000),
      offset: Offset(0, 3),
      blurRadius: 6,
    ),
  ];

  static const List<BoxShadow> navBarBoxShadow = [
    BoxShadow(
      color: kShadowColor,
      offset: Offset(15, 15),
      blurRadius: 50,
    ),
  ];

}
