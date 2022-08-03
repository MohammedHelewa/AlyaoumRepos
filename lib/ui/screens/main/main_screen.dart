import 'package:alyaoum/common/app_libraries.dart';
import 'package:alyaoum/ui/screens/categories/categories_screen.dart';
import 'package:alyaoum/ui/screens/home/home_screen.dart';
import 'package:alyaoum/ui/screens/prayer/prayer_screen.dart';
import 'package:alyaoum/ui/screens/sports/sports_screen.dart';
import 'package:alyaoum/ui/screens/videos/videos_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

import '../../../service/theme_service.dart';
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
    return ThemeSwitchingArea(
      child: Builder(builder: (context) => Scaffold(
        extendBody: true,
        key: _scaffoldKey,
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', height: Sizes.height_25, color: AppTheme.isLightTheme(context)? null : kLightBlueColor),
          centerTitle: true,
          leading: Container(
            margin: const EdgeInsetsDirectional.fromSTEB(10, 8, 5, 8),
            decoration: BoxDecoration(
              color: kLightBlueColor,
              borderRadius: BorderRadius.circular(Sizes.radius_8),
            ),
            child: IconButton(
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                icon: SvgPicture.asset('assets/icons/menu_icon.svg', width: Sizes.iconSize_25, height: Sizes.iconSize_25, color: kPrimaryColor),
            ),
          ),
          actions: [
            ThemeSwitcher(
              clipper: const ThemeSwitcherCircleClipper(),
              builder: (context)=> IconButton(onPressed: () async {
                var themeName = AppTheme.isLightTheme(context)? 'dark' : 'light';
                var service = await ThemeService.instance..save(themeName);
                var theme = service.getByName(themeName);
                ThemeSwitcher.of(context).changeTheme(theme: theme);
              }, icon: Icon(AppTheme.isLightTheme(context)? Icons.dark_mode_outlined : Icons.wb_sunny_outlined)),
            ),
          ],
        ),
        body: pages[pageIndex],
        bottomNavigationBar: Container(
          width: double.infinity,
          height: Sizes.height_70,
          decoration: BoxDecoration(
            color: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(Sizes.radius_25),
              topEnd: Radius.circular(Sizes.radius_25),
            ),
            boxShadow: AppTheme.isLightTheme(context)? AppShadows.navBarBoxShadow : AppShadows.navBarDarkBoxShadow,
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
        drawer: const AppDrawerWidget(),
      ),
      ),
    );
  }
}


