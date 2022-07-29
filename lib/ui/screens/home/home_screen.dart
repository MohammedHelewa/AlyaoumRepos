import 'package:alyaoum/common/app_libraries.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(0,0,0,Sizes.height_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
            child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.horizontal_10,
                  vertical: 10.h),
            separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.w),
            itemBuilder: (context, index) => const ChoiceChip(
              label: CustomText('اخبار الجالية',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                fontColor: kGrayColor,
              ),
              selected: true,
              backgroundColor: Colors.transparent,
              selectedColor: Colors.transparent,
              side: BorderSide(
                color: kBlackColor,
              ),
            ),
            ),
          ),
          ListView.separated(
            itemCount: 5,
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.horizontal_10,
                vertical: Sizes.vertical_15,
            ),
            separatorBuilder: (BuildContext context, int index) => SizedBox(height: 15.h),
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(Sizes.radius_10),
              child: Ink(
                width: double.infinity,
                height: 400.h,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: AppShadows.boxShadow,
                  borderRadius:
                      BorderRadiusDirectional.circular(Sizes.radius_10),
                ),
                child: Column(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: AppNetworkImage(
                        path:
                            'https://api.time.com/wp-content/uploads/2014/03/russia-president-vladimir-putin.jpg?quality=85&w=1500',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        radius: 10,
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          Sizes.horizontal_10,
                          12.h,
                          Sizes.horizontal_10,
                          0),
                      child: Column(children: [
                        const CustomText(
                          'برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول',
                          maxLines: 2,
                          alignment: AlignmentDirectional.centerStart,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.access_time_rounded,
                                color: kGrayColor, size: 15.r),
                            SizedBox(width: 3.w),
                            const CustomText(
                              'اليوم',
                              maxLines: 2,
                              alignment: AlignmentDirectional.centerStart,
                              fontWeight: FontWeight.w500,
                              fontColor: kGrayColor,
                              fontSize: 12,
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Chip(
                                  label: CustomText('سياسة',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                  backgroundColor: kWhiteColor,
                                  side: BorderSide(
                                    color: kBlackColor,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                const Chip(
                                  label: CustomText('24/24',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                  backgroundColor: kWhiteColor,
                                  side: BorderSide(
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 5.w),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share, size: 24.r))
                          ],
                        ),
                      ]),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
