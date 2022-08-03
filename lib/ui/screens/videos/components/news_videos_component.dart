import 'package:alyaoum/common/app_libraries.dart';

import '../../video_details/video_details_screen.dart';

class NewsVideosComponent extends StatelessWidget {
  const NewsVideosComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.horizontal_10, vertical: Sizes.vertical_15),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: Sizes.height_15),
      itemBuilder: (context, index) => const NewsVideosCardComponent(),
    );
  }
}

class NewsVideosCardComponent extends StatelessWidget {
  const NewsVideosCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const NewsVideosScreen()),
      borderRadius: BorderRadius.circular(Sizes.radius_15),
      child: Ink(
        width: double.infinity,
        height: Sizes.height_300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.radius_15),
          boxShadow: AppTheme.isLightTheme(context) ? AppShadows.boxShadow03 : AppShadows.darkBoxShadow03,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.center,
          children: [
            Positioned.fill(
              child: AppNetworkImage(
              path: 'https://phantom-marca.unidadeditorial.es/e49a48a8ec39f7e02453841d33a2eb7d/resize/1320/f/jpg/assets/multimedia/imagenes/2022/07/14/16577504854923.jpg',
              fit: BoxFit.cover,
              radius: Sizes.radius_15,
              colorBlendMode: BlendMode.darken,
              imageColor: Colors.black38,
            ),
            ),
            PositionedDirectional(
              start: Sizes.horizontal_10,
              top: Sizes.height_15,
              end: Sizes.horizontal_10,
              bottom: Sizes.height_5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CustomText(
                    'اصابة ميسي في بداية مبارة الريال وسيطرة الدون كريستيانو على المباراة',
                    maxLines: 2,
                    alignment: AlignmentDirectional.centerStart,
                    fontWeight: FontWeight.w600,
                    fontColor: kWhiteColor,
                    fontSize: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(const BorderSide(color: kLightBlueColor)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                              minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                            ), child: const CustomText('سياسة', fontSize: 8, fontWeight: FontWeight.w600, fontColor: kLightBlueColor),
                          ),
                          SizedBox(width: Sizes.width_5),
                          OutlinedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(const BorderSide(color: kLightBlueColor)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                              minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                            ), child: const CustomText('24/24', fontSize: 8, fontWeight: FontWeight.w600, fontColor: kLightBlueColor),
                          ),
                        ],
                      ),
                      SizedBox(width: Sizes.width_5),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share, size: Sizes.iconSize_25, color: kWhiteColor))
                    ],
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              child: Container(
                height: Sizes.size_55,
                width: Sizes.size_55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.7),
                ),
                child: Icon(Icons.play_arrow_rounded, color: kLightBlueColor, size: Sizes.iconSize_54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}