import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/app_libraries.dart';

class MatchesSliderComponent extends StatelessWidget {
  const MatchesSliderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,
      padding: EdgeInsetsDirectional.only(top: Sizes.height_5, bottom: Sizes.height_10),
      child: SizedBox(
        height: Sizes.height_200,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(
              5, (index) {
                return Container(
                  width: Sizes.width_300,
                  margin: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.height_5, Sizes.width_10,Sizes.height_5),
                  decoration: BoxDecoration(
                    gradient:  const LinearGradient(
                      end: AlignmentDirectional.centerEnd,
                      begin: AlignmentDirectional.centerStart,
                      colors: [
                        kLightBlueColor,
                        kLightBlueColor,
                        kWhiteColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(Sizes.radius_10),
                    boxShadow: AppShadows.boxShadow00,
                    border: Border.all(color: kPrimaryColor.withOpacity(0.2), width: 1.5),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: UnconstrainedBox(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: Sizes.width_10,vertical: Sizes.height_3),
                            margin: EdgeInsets.symmetric(horizontal: Sizes.width_10, vertical: Sizes.height_5),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(Sizes.radius_3),
                              border: Border.all(color: kPrimaryColor.withOpacity(0.2)),
                            ),
                            child: const CustomText('منتهي', fontColor: kLightGrayColor, fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.height_5),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FittedBox(
                              child: Column(
                                children: [
                                  Container(
                                    width: Sizes.size_60,
                                    height: Sizes.size_60,
                                    padding: EdgeInsets.all(Sizes.paddingAll_8),
                                    decoration: const BoxDecoration(
                                      color: kWhiteColor,
                                      shape: BoxShape.circle,
                                      boxShadow: AppShadows.boxShadow03,
                                    ),
                                    child: Image.asset('assets/images/real_madrid.png'),
                                  ),
                                  SizedBox(height: Sizes.height_10),
                                  const CustomText('ريال مديد', fontSize: 18, fontWeight: FontWeight.w500, fontColor: kGrayColor),
                                  const CustomText('2', fontSize: 20, fontWeight: FontWeight.bold, fontColor: kPrimaryColor),
                                ],
                              ),
                            ),
                            const CustomText('VS', fontSize: 16, fontWeight: FontWeight.bold),
                            FittedBox(
                              child: Column(
                                children: [
                                  Container(
                                    width: Sizes.size_60,
                                    height: Sizes.size_60,
                                    padding: EdgeInsets.all(Sizes.paddingAll_8),
                                    decoration: const BoxDecoration(
                                      color: kWhiteColor,
                                      shape: BoxShape.circle,
                                      boxShadow: AppShadows.boxShadow03,
                                    ),
                                    child: Image.asset('assets/images/barcelona.png'),
                                  ),
                                  SizedBox(height: Sizes.height_10),
                                  const CustomText('برشلونا', fontSize: 18, fontWeight: FontWeight.w500, fontColor: kGrayColor),
                                  const CustomText('0', fontSize: 20, fontWeight: FontWeight.bold, fontColor: kPrimaryColor),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(color:kPrimaryColor.withOpacity(0.2), thickness: 1.5, height: Sizes.height_10),
                      Padding(
                        padding: EdgeInsetsDirectional.only(bottom: Sizes.height_5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset('assets/icons/premier_league_icon.svg', width: Sizes.size_20, height: Sizes.size_20),
                            SizedBox(width: Sizes.width_5),
                            const CustomText('الدوري الانجليزي', fontColor: kLightGrayColor, fontWeight: FontWeight.w500, fontSize: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}