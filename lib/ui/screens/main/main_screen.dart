import 'package:alyaoum/common/app_libraries.dart';
import 'package:alyaoum/ui/screens/categories/categories_screen.dart';
import 'package:alyaoum/ui/screens/home/home_screen.dart';
import 'package:alyaoum/ui/screens/prayer/prayer_screen.dart';
import 'package:alyaoum/ui/screens/sports/sports_screen.dart';
import 'package:alyaoum/ui/screens/videos/videos_screen.dart';

import 'components/app_drawer_widget.dart';
import 'components/bottom_navigation_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  final List<Widget> pages = const [
    HomeScreen(),
    CategoriesScreen(),
    VideosScreen(),
    SportsScreen(),
    PrayerScreen(),
  ];

  final List<String> _mainIcons = [
    'assets/icons/home_icon.svg',
    'assets/icons/categories_icon.svg',
    'assets/icons/video_icon.svg',
    'assets/icons/sport_icon.svg',
    'assets/icons/prayer_icon.svg',
  ];

  final List<String> _mainLabels = [
    'الرئيسية',
    'التصنيفات',
    'فيديو',
    'رياضة',
    'صلاة',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        title: Image.asset('assets/images/logo.png', height: Sizes.height_25),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsetsDirectional.fromSTEB(10, 8, 5, 8),
          decoration: BoxDecoration(
            color: kLightBlueColor,
            borderRadius: BorderRadius.circular(Sizes.radius_8),
          ),
          child: IconButton(
              onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              icon: const Icon(Icons.menu, color: kPrimaryColor),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined, color: kBlackColor))
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: Sizes.height_70,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(Sizes.radius_25),
            topEnd: Radius.circular(Sizes.radius_25),
          ),
          boxShadow: AppShadows.navBarBoxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            pages.length,
            (index) => BottomNavigationIcons(
              imageName: _mainIcons[index],
              label: _mainLabels[index],
              iconColor: pageIndex == index ? kPrimaryColor : kLightGrayColor,
              fontColor: pageIndex == index ? kPrimaryColor : kLightGrayColor,
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      endDrawer: const AppDrawerWidget(),
    );
  }
}


