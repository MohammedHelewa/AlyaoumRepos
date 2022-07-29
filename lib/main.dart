import 'package:alyaoum/common/app_libraries.dart';

import 'ui/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 899.4285714285714),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar', 'AR'),
        fallbackLocale: const Locale('ar'),
        theme: AppTheme.appTheme,
        home: const MainScreen(),
      ),
    );
  }
}