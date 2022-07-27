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
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ListView.separated(
            itemCount: 5,
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: AppSizer.horizontal_8,
                vertical: AppSizer.vertical_15),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 15.h),
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(AppSizer.radius_10),
              child: Ink(
                width: double.infinity,
                height: 400.h,
                decoration: BoxDecoration(
                  color: kWhitColor,
                  boxShadow: AppShadows.boxShadow,
                  borderRadius:
                      BorderRadiusDirectional.circular(AppSizer.radius_10),
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
                          AppSizer.horizontal_8,
                          12.h,
                          AppSizer.horizontal_8,
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
                                  backgroundColor: kWhitColor,
                                  side: BorderSide(
                                    color: kBlackColor,
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                const Chip(
                                  label: CustomText('24/24',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                  backgroundColor: kWhitColor,
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
