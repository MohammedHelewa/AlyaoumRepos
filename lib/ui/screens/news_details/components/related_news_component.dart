import 'package:alyaoum/common/app_libraries.dart';

class RelatedNewsComponent extends StatelessWidget {
  const RelatedNewsComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
          child: const CustomText('اخبار مرتبطة',
            fontWeight: FontWeight.bold,
            alignment: AlignmentDirectional.centerStart,
            fontColor: kDarkGrayColor,
            fontSize: 18,
            maxLines: 1,
          ),
        ),
        SizedBox(height: Sizes.height_15),
        SizedBox(
          height: Sizes.height_250,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
            separatorBuilder: (BuildContext context, int index) => SizedBox(width: Sizes.width_15),
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(Sizes.radius_10),
              child: Ink(
                width: Sizes.width_290,
                height: Sizes.height_400,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: AppShadows.boxShadow03,
                  borderRadius:
                  BorderRadiusDirectional.circular(Sizes.radius_10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: AppNetworkImage(
                        path: 'https://api.time.com/wp-content/uploads/2014/03/russia-president-vladimir-putin.jpg?quality=85&w=1500',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        radius: Sizes.radius_10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.height_15, Sizes.horizontal_10, 0),
                      child: Column(
                        children: [
                          const CustomText(
                            'برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول',
                            maxLines: 2,
                            alignment: AlignmentDirectional.centerStart,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: null,
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(const BorderSide(color: kBlackColor)),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                                      minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                                    ), child: const CustomText('سياسة', fontSize: 10, fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: Sizes.width_5),
                                  OutlinedButton(
                                    onPressed: null,
                                    style: ButtonStyle(
                                      side: MaterialStateProperty.all(const BorderSide(color: kBlackColor)),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                                      minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                                    ), child: const CustomText('24/24', fontSize: 10, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(width: Sizes.width_5),
                              IconButton(onPressed: () {}, icon: Icon(Icons.share, size: Sizes.iconSize_20))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}