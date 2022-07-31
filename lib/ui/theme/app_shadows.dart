import '../../common/app_libraries.dart';

class AppShadows {

  static const List<BoxShadow> boxShadow03 = <BoxShadow>[
    BoxShadow(
      color: Color(0x29000000),
      offset: Offset(0, 3),
      blurRadius: 6,
    ),
  ];

  static const List<BoxShadow> boxShadow00 = <BoxShadow>[
    BoxShadow(
      color: Color(0x29000000),
      offset: Offset(0, 0),
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

  static const List<BoxShadow> navBarDarkBoxShadow = [
    BoxShadow(
      color: kShadowDarkColor,
      offset: Offset(15, 15),
      blurRadius: 50,
    ),
  ];

  static const List<BoxShadow> darkBoxShadow03 = <BoxShadow>[
    BoxShadow(
      color: Color(0xBA000000),
      offset: Offset(0, 3),
      blurRadius: 6,
    ),
  ];

}
