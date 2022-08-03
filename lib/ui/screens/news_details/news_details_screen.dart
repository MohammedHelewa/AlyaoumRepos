import 'package:alyaoum/common/app_libraries.dart';

import '../../widgets/custom_outlined_button.dart';
import 'components/related_news_component.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: Sizes.height_25, color: AppTheme.isLightTheme(context)? null : kLightBlueColor),
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
                  CustomText('برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 18, maxLines: 4, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,),
                  SizedBox(height: Sizes.height_15),
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: const NetworkImage('https://usbeketrica.com/media/88612/download/5be04645b290d.jpg?v=1&inline=1'),backgroundColor: kGrayColor.withOpacity(0.5)),
                      SizedBox(width: Sizes.width_10),
                      CustomText('اسم الكاتب.', fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 12),
                      SizedBox(width: Sizes.width_5),
                      Icon(Icons.access_time_rounded, size: Sizes.size_12,color: kLightGrayColor),
                      SizedBox(width: Sizes.width_3),
                      const CustomText('منذ ساعة', fontWeight: FontWeight.w500, alignment: AlignmentDirectional.centerStart, fontSize: 10,fontColor: kLightGrayColor),
                    ],
                  ),
                  SizedBox(height: Sizes.height_15),
                  AppNetworkImage(
                    path: 'https://api.time.com/wp-content/uploads/2014/03/russia-president-vladimir-putin.jpg?quality=85&w=1500',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: Sizes.height_220,
                    radius: Sizes.radius_10,
                  ),
                  SizedBox(height: Sizes.height_5),
                  Row(
                    children: [
                      const CustomOutlinedButton(text: 'سياسة'),
                      SizedBox(width: Sizes.width_5),
                      const CustomOutlinedButton(text: '24/24'),
                    ],
                  ),
                  SizedBox(height: Sizes.height_10),
                  CustomText('هذا النص هو مثال لنص',
                      fontWeight: FontWeight.bold,
                      alignment: AlignmentDirectional.centerStart,
                      fontColor: AppTheme.isLightTheme(context)? kDarkGrayColor : kLightBlueColor,
                      maxLines: 1,
                  ),
                  SizedBox(height: Sizes.height_10),
                  const CustomText('''إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.
ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.
هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.''',
                    fontWeight: FontWeight.w500,
                    alignment: AlignmentDirectional.centerStart,
                    fontColor: kGrayColor,
                    fontSize: 12,
                    textOverflow: null,
                    height: 1.8,
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.height_20),
            const RelatedNewsComponent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},label: const CustomText('مشاركة', fontSize: 12,fontWeight: FontWeight.bold, fontColor: kWhiteColor), icon: Icon(Icons.share, size: Sizes.iconSize_20, color: kWhiteColor)),
    );
  }
}
