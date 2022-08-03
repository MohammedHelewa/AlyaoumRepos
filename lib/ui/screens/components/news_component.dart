import 'package:alyaoum/common/app_libraries.dart';

import '../../widgets/custom_outlined_button.dart';
import '../news_details/news_details_screen.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10, vertical: Sizes.vertical_15),
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: Sizes.height_15),
      itemBuilder: (context, index) => const NewsCardComponent(),
    );
  }
}

class NewsCardComponent extends StatelessWidget {
  const NewsCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const NewsDetailsScreen()),
      borderRadius: BorderRadius.circular(Sizes.radius_10),
      child: Ink(
        width: double.infinity,
        height: Sizes.height_400,
        decoration: BoxDecoration(
          color: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,
          boxShadow: AppTheme.isLightTheme(context)? AppShadows.boxShadow03 : AppShadows.darkBoxShadow03,
          borderRadius:
          BorderRadiusDirectional.circular(Sizes.radius_10),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: AppNetworkImage(
                path: 'https://api.time.com/wp-content/uploads/2014/03/russia-president-vladimir-putin.jpg?quality=85&w=1500',
                fit: BoxFit.cover,
                width: double.infinity,
                radius: Sizes.radius_10,
              ),
            ),
            Expanded(
              flex: 2,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.height_15, Sizes.horizontal_10, 0),
                  child: Column(
                    children: [
                      CustomText(
                      'برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول',
                      maxLines: 2,
                      alignment: AlignmentDirectional.centerStart,
                      fontWeight: FontWeight.w600,
                      fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,
                    ),
                    SizedBox(height: Sizes.height_5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time_rounded, color: kLightGrayColor, size: Sizes.size_12),
                        SizedBox(width: 3.w),
                        const CustomText(
                          'اليوم',
                          maxLines: 2,
                          fontSize: 9,
                          fontColor: kLightGrayColor,
                          fontWeight: FontWeight.w500,
                          alignment: AlignmentDirectional.centerStart,
                        ),
                      ],
                    ),
                    SizedBox(height: Sizes.height_3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CustomOutlinedButton(text: 'سياسة'),
                            SizedBox(width: Sizes.width_5),
                            const CustomOutlinedButton(text: '24/24'),
                          ],
                        ),
                        SizedBox(width: Sizes.width_5),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share, size: Sizes.iconSize_25))
                      ],
                    ),
                  ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}