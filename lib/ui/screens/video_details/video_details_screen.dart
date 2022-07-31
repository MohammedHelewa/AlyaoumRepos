import 'package:alyaoum/common/app_libraries.dart';

import 'components/related_videos_component.dart';

class NewsVideosScreen extends StatelessWidget {
  const NewsVideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: Sizes.height_25),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_forward_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Sizes.vertical_15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.horizontal_10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppNetworkImage(
                    path: 'https://api.time.com/wp-content/uploads/2014/03/russia-president-vladimir-putin.jpg?quality=85&w=1500',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: Sizes.height_220,
                    radius: Sizes.radius_10,
                  ),
                  SizedBox(height: Sizes.height_15),
                  CustomText('اصابة ميسي في بداية المبارة وسيطرة الريال', fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor, fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 22, maxLines: 4),
                  SizedBox(height: Sizes.height_10),
                  Row(
                    children: [
                      const CircleAvatar(backgroundImage: NetworkImage('https://www.westernunion.com/staticassets/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png'),),
                      SizedBox(width: Sizes.width_10),
                      CustomText('اسم الكاتب.', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 16, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,),
                      SizedBox(width: Sizes.width_5),
                      Icon(Icons.access_time_rounded, size: Sizes.size_12,color: kLightGrayColor),
                      SizedBox(width: Sizes.width_3),
                      const CustomText('منذ ساعة', fontWeight: FontWeight.w500, alignment: AlignmentDirectional.centerStart, fontSize: 10,fontColor: kLightGrayColor),
                    ],
                  ),
                  SizedBox(height: Sizes.height_5),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(color: kGrayColor)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                          minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                        ), child: const CustomText('سياسة', fontSize: 10, fontWeight: FontWeight.w600, fontColor: kGrayColor),
                      ),
                      SizedBox(width: Sizes.width_5),
                      OutlinedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(color: kGrayColor)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.radius_20))),
                          minimumSize: MaterialStateProperty.all(Size(Sizes.width_50, Sizes.height_25)),
                        ), child: const CustomText('24/24', fontSize: 10, fontWeight: FontWeight.w600, fontColor: kGrayColor),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.height_5),
                  const CustomText('''يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.''',
                    fontWeight: FontWeight.w500,
                    alignment: AlignmentDirectional.centerStart,
                    fontColor: kGrayColor,
                    textOverflow: null,
                    height: 1.4,
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.height_20),
            const RelatedVideosComponent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},label: const CustomText('مشاركة', fontSize: 12, fontWeight: FontWeight.bold, fontColor: kWhiteColor), icon: Icon(Icons.share, size: Sizes.iconSize_20, color: kWhiteColor)),
    );
  }
}
