import 'package:alyaoum/common/app_libraries.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({Key? key}) : super(key: key);

  @override
  State<AppDrawerWidget> createState() => _AppDrawerWidgetState();
}

class _AppDrawerWidgetState extends State<AppDrawerWidget> {
  final List<String> _drawerIcons = [
    'assets/icons/home_icon.svg',
    'assets/icons/categories_icon.svg',
    'assets/icons/video_icon.svg',
    'assets/icons/sport_icon.svg',
    'assets/icons/prayer_icon.svg',
    'assets/icons/report_icon.svg',
  ];

  final List<String> _socialIcons = [
    'assets/images/twitter_icon.png',
    'assets/images/instagram_icon.png',
    'assets/images/facebook_icon.png',
  ];

  final List<String> _drawerLabels = [
    'الرئيسية',
    'التصنيفات',
    'فيديو',
    'رياضة',
    'صلاة',
    'ابلغ عن مشكلة',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhiteColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: kWhiteColor),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: double.infinity,
                  width: double.infinity,
                ),
            ),
            ListView.separated(
              itemCount: _drawerLabels.length,
              shrinkWrap: true,
              padding: EdgeInsetsDirectional.zero,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) => SizedBox(height: Sizes.height_5),
              itemBuilder: (context, index) => ListTile(
                title: CustomText(
                  _drawerLabels[index],
                  alignment: AlignmentDirectional.centerStart,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                leading: SvgPicture.asset(_drawerIcons[index]),
                horizontalTitleGap: 0,
                onTap: () {},
              ),
            ),
            SizedBox(height: Sizes.height_60),
            const CustomText('مشاركة التطبيق', fontWeight: FontWeight.bold, fontSize: 18),
            SizedBox(height: Sizes.height_15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _socialIcons.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: Sizes.height_10),
                        child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(Sizes.radius_10),
                            child: Ink(
                              width: Sizes.size_45,
                              height: Sizes.size_45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(Sizes.radius_10),
                                  image: DecorationImage(image: AssetImage(_socialIcons[index]), fit: BoxFit.cover),
                              ),
                            ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
