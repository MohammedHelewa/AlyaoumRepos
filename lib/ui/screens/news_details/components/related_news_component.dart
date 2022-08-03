import 'package:alyaoum/common/app_libraries.dart';

import '../../../widgets/custom_outlined_button.dart';

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
          child: CustomText('اخبار مرتبطة',
            fontWeight: FontWeight.bold,
            alignment: AlignmentDirectional.centerStart,
            fontColor: AppTheme.isLightTheme(context)? kDarkGrayColor : kLightBlueColor,
            fontSize: 16,
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
                  color: AppTheme.isLightTheme(context)? kWhiteColor : kPrimaryDarkColor,
                  boxShadow: AppTheme.isLightTheme(context)? AppShadows.boxShadow03 : AppShadows.darkBoxShadow03,
                  borderRadius:
                  BorderRadiusDirectional.circular(Sizes.radius_10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: AppNetworkImage(
                        path: 'https://arabicpost.me/wp-content/uploads/2020/10/---1-21.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        radius: Sizes.radius_10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.height_15, Sizes.horizontal_10, 0),
                      child: Column(
                        children: [
                          CustomText(
                            'برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول',
                            maxLines: 2,
                            alignment: AlignmentDirectional.centerStart,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const CustomOutlinedButton(text: 'سياسة'),
                                      SizedBox(width: Sizes.width_5),
                                      const CustomOutlinedButton(text: '24/24'),
                                    ],
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