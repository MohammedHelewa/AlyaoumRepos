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
    return ClipRRect(
     borderRadius: BorderRadius.only(topRight: Radius.circular(Sizes.radius_15), bottomRight: Radius.circular(Sizes.radius_15)),
      child: Drawer(
        backgroundColor: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: double.infinity,
                    width: double.infinity,
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.width_10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ابحث عن...',
                    isDense: true,
                    enabled: false,
                    prefixIcon: const Icon(Icons.search_rounded, color: kBlackColor),
                    contentPadding: EdgeInsetsDirectional.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Sizes.radius_25)
                    )
                  ),
                ),
              ),
              SizedBox(height: Sizes.height_15),
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
                    fontSize: 16,
                    fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,
                  ),
                  leading: SizedBox(
                    height: Sizes.size_22,
                    width: Sizes.size_22,
                    child: SvgPicture.asset(_drawerIcons[index]),
                  ),
                  horizontalTitleGap: 0,
                  onTap: () {},
                ),
              ),
              SizedBox(height: Sizes.height_60),
              CustomText('مشاركة التطبيق', fontWeight: FontWeight.bold, fontSize: 16, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,),
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
                                width: Sizes.size_40,
                                height: Sizes.size_40,
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
      ),
    );
  }
}
