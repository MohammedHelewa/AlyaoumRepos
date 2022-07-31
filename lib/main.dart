import 'package:alyaoum/common/app_libraries.dart';
import 'package:alyaoum/service/theme_service.dart';
import 'ui/screens/main/main_screen.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = await ThemeService.instance;
  var initTheme = themeService.initial;
  runApp(MyApp(theme: initTheme));
}

class MyApp extends StatelessWidget {
  final ThemeData? theme;
  const MyApp({this.theme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 899.4285714285714),
      builder: (context, child) => ThemeProvider(
        initTheme: theme!,
        duration: const Duration(milliseconds: 400),
        builder: (_, theme)=> GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar', 'AR'),
          fallbackLocale: const Locale('ar'),
          theme: theme,
          home: const MainScreen(),
        ),
      ),
    );
  }
}
