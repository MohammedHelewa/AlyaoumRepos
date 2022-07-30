import 'package:alyaoum/common/app_libraries.dart';

import 'components/related_news_component.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

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
                  const CustomText('برقية من الملك الى امبراطور اليابان على إثر اغتيال الوزير الاول', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 24,maxLines: 4),
                  SizedBox(height: Sizes.height_15),
                  Row(
                    children: [
                     const CircleAvatar(backgroundImage: NetworkImage('https://www.westernunion.com/staticassets/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png'),),
                      SizedBox(width: Sizes.width_10),
                      const CustomText('اسم الكاتب.', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 16),
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
                  SizedBox(height: Sizes.height_10),
                  const CustomText('هذا النص هو مثال لنص',
                      fontWeight: FontWeight.bold,
                      alignment: AlignmentDirectional.centerStart,
                      fontColor: kDarkGrayColor,
                      fontSize: 18,
                      maxLines: 1,
                  ),
                  SizedBox(height: Sizes.height_10),
                  const CustomText('''إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.
ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.
هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.''',
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
            const RelatedNewsComponent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},label: const CustomText('مشاركة',fontColor: kWhiteColor, fontSize: 12,fontWeight: FontWeight.bold),icon: Icon(Icons.share, size: Sizes.iconSize_20)),
    );
  }
}