import 'package:alyaoum/common/app_libraries.dart';

class PrayerTimeNowCardComponent extends StatefulWidget {
  const PrayerTimeNowCardComponent({Key? key}) : super(key: key);

  @override
  State<PrayerTimeNowCardComponent> createState() => _PrayerTimeNowCardComponentState();
}

class _PrayerTimeNowCardComponentState extends State<PrayerTimeNowCardComponent> {

  final List<String> _weatherImage = [
    'assets/images/cloudy.png',
    'assets/images/rainy.png',
    'assets/images/sunny.png',
    'assets/images/sunny_cloudy.png',
    'assets/images/rainy.png',
    'assets/images/sunny_cloudy.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height_170,
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(Sizes.paddingAll_8),
      decoration: BoxDecoration(
        color: kLightBlueColor,
        boxShadow: AppShadows.boxShadow03,
        borderRadius: BorderRadius.circular(Sizes.radius_10),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText('الاحد', fontColor: kGrayColor, fontWeight: FontWeight.w500,alignment: AlignmentDirectional.topStart),
                    Image.asset(_weatherImage[3], scale: 2),
                    Column(
                      children: const [
                        CustomText('° 30', fontWeight: FontWeight.bold,alignment: AlignmentDirectional.centerStart, fontSize: 18),
                        CustomText('° 14', fontColor: kGrayColor, fontWeight: FontWeight.w500,alignment: AlignmentDirectional.centerStart, fontSize: 16),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText('باقي على', fontColor: kGrayColor, fontWeight: FontWeight.w500,alignment: AlignmentDirectional.centerStart),
                    SizedBox(height: Sizes.height_3),
                    const CustomText('صلاة الظهر', fontColor: kPrimaryColor, fontWeight: FontWeight.bold,fontSize: 18,alignment: AlignmentDirectional.centerStart),
                    SizedBox(height: Sizes.height_3),
                    const CustomText('5:30 ص', fontColor: kGrayColor, fontWeight: FontWeight.w500,alignment: AlignmentDirectional.centerStart),
                    SizedBox(height: Sizes.height_3),
                    const CustomText('00 : 10 :30', fontColor: kGreenColor, fontWeight: FontWeight.bold,fontSize: 16,alignment: AlignmentDirectional.centerStart),
                  ],
                ),
              ),
            ],
          ),
          PositionedDirectional(
            bottom: -61,
            start: -130,
            end: 0,
            child: Image.asset('assets/images/mosque.png',scale: 2.6),
          ),
        ],
      ),
    );
  }
}