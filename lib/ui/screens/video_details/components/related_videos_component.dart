import 'package:alyaoum/common/app_libraries.dart';

class RelatedVideosComponent extends StatelessWidget {
  const RelatedVideosComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
          child: CustomText('فيديوهات  مرتبطة',
            fontWeight: FontWeight.bold,
            alignment: AlignmentDirectional.centerStart,
            fontColor: AppTheme.isLightTheme(context)? kDarkGrayColor : kLightBlueColor,
            fontSize: 18,
            maxLines: 1,
          ),
        ),
        SizedBox(height: Sizes.height_15),
        SizedBox(
          height: Sizes.height_200,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
            separatorBuilder: (BuildContext context, int index) => SizedBox(width: Sizes.width_15),
            itemBuilder: (context, index) => InkWell(
              onTap: ()=> {},
              borderRadius: BorderRadius.circular(Sizes.radius_15),
              child: Ink(
                width: Sizes.width_290,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.radius_15),
                  color: kGrayColor.withOpacity(0.7),
                  image: const DecorationImage(
                    image: NetworkImage('https://phantom-marca.unidadeditorial.es/e49a48a8ec39f7e02453841d33a2eb7d/resize/1320/f/jpg/assets/multimedia/imagenes/2022/07/14/16577504854923.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.height_15, Sizes.horizontal_10, Sizes.height_5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CustomText(
                        'اصابة ميسي في بداية مبارة الريال وسيطرة الدون كريستيانو على المباراة',
                        maxLines: 2,
                        alignment: AlignmentDirectional.centerStart,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontColor: kWhiteColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              OutlinedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(const BorderSide(color: kWhiteColor)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                                  minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                                ), child: const CustomText('سياسة', fontSize: 10, fontWeight: FontWeight.w600, fontColor: kWhiteColor),
                              ),
                              SizedBox(width: Sizes.width_5),
                              OutlinedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(const BorderSide(color: kWhiteColor)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                                  minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                                ), child: const CustomText('24/24', fontSize: 10, fontWeight: FontWeight.w600, fontColor: kWhiteColor),
                              ),
                            ],
                          ),
                          SizedBox(width: Sizes.width_5),
                          IconButton(onPressed: () {}, icon: Icon(Icons.share, size: Sizes.iconSize_20, color: kWhiteColor))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}