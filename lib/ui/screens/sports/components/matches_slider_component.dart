import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/app_libraries.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MatchesSliderComponent extends StatelessWidget {
  const MatchesSliderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      padding: EdgeInsetsDirectional.only(top: Sizes.height_5, bottom: Sizes.height_10),
      child: CarouselSlider(
        items: List.generate(
          5,
              (index) {
            return Container(
              width: Sizes.width_300,
              margin: EdgeInsets.symmetric(vertical: Sizes.height_5),
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
                        child: const CustomText('منتهي', fontColor: kLightGrayColor, fontSize: 14, fontWeight: FontWeight.bold),
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
                              const CustomText('ريال مديد', fontSize: 16, fontWeight: FontWeight.w500, fontColor: kGrayColor),
                              const CustomText('2', fontSize: 16, fontWeight: FontWeight.bold, fontColor: kPrimaryColor),
                            ],
                          ),
                        ),
                        const CustomText('VS', fontSize: 18, fontWeight: FontWeight.bold),
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
                              const CustomText('برشلونا', fontSize: 16, fontWeight: FontWeight.w500, fontColor: kGrayColor),
                              const CustomText('0', fontSize: 16, fontWeight: FontWeight.bold, fontColor: kPrimaryColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color:kPrimaryColor.withOpacity(0.2),thickness: 1.5),
                  Padding(
                    padding: EdgeInsetsDirectional.only(bottom: Sizes.height_8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icons/premier_league_icon.svg', width: Sizes.size_20, height: Sizes.size_20),
                        SizedBox(width: Sizes.width_5),
                        const CustomText('الدوري الانجليزي', fontColor: kLightGrayColor, fontWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        options: CarouselOptions(
          height: Sizes.height_200,
          aspectRatio: 0.6,
          viewportFraction: 0.70,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}