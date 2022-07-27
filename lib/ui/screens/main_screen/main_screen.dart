import 'package:alyaoum/common/app_libraries.dart';
import 'package:alyaoum/ui/screens/categories/categories_screen.dart';
import 'package:alyaoum/ui/screens/home/home_screen.dart';
import 'package:alyaoum/ui/screens/prayer/prayer_screen.dart';
import 'package:alyaoum/ui/screens/sports/sports_screen.dart';
import 'package:alyaoum/ui/screens/videos/videos_screen.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const <Widget> [
            HomeScreen(),
            CategoriesScreen(),
            VideosScreen(),
            SportsScreen(),
            // PrayerScreen(),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
                filledIcon: Icons.home_rounded,
                outlinedIcon: Icons.home_outlined),
            BarItem(
              filledIcon: Icons.category_rounded,
              outlinedIcon: Icons.category_outlined,
            ),
            BarItem(
              filledIcon: Icons.videocam_rounded,
              outlinedIcon: Icons.videocam_outlined,
            ),
            BarItem(
              filledIcon: Icons.sports_basketball_rounded,
              outlinedIcon: Icons.sports_basketball_outlined,
            ),
            // BarItem(
            //   filledIcon: Icons.person,
            //   outlinedIcon: Icons.person_outline_rounded,
            // ),
          ],
        ),
      ),
    );
  }
}