import '../../../../common/app_libraries.dart';

class PrayerTimesComponent extends StatefulWidget {
  const PrayerTimesComponent({Key? key}) : super(key: key);

  @override
  State<PrayerTimesComponent> createState() => _PrayerTimesComponentState();
}

class _PrayerTimesComponentState extends State<PrayerTimesComponent> {
  final List<String> _columnTitles = [
    'الصلاة',
    'الاذان',
    'الإقامة',
  ];

  final List<PrayerModel> _prayersList = const [
    PrayerModel('الفجر', '5:30 ص', '5:45 ص'),
    PrayerModel('الشروق', '5:30 ص', '5:45 ص'),
    PrayerModel('الظهر', '5:30 ص', '5:45 ص'),
    PrayerModel('العصر', '5:30 ص', '5:45 ص'),
    PrayerModel('المغرب', '5:30 ص', '5:45 ص'),
    PrayerModel('العشاء', '5:30 ص', '5:45 ص'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText('أوقات الصلاة', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 20, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor),
        SizedBox(height: Sizes.height_15),
        Container(
          width: double.infinity,
          padding: EdgeInsetsDirectional.fromSTEB(0, Sizes.height_20, 0, Sizes.height_20),
          decoration: BoxDecoration(
            color: kLightBlueColor,
            boxShadow: AppTheme.isLightTheme(context)? AppShadows.boxShadow03 : AppShadows.darkBoxShadow03,
            borderRadius: BorderRadius.circular(Sizes.radius_10),
          ),
          child: Column(
            children: [
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: List.generate(
                      _columnTitles.length,
                      (index) => Padding(
                        padding: EdgeInsetsDirectional.only(bottom: Sizes.height_5),
                        child: CustomText(
                          _columnTitles[index],
                          fontSize: 14,
                          fontColor: kGrayColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: _prayersList
                    .map((e) => TableRow(
                          children: [
                            CustomText(
                              e.prayerName,
                              height: 3,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold,
                            ),
                            Column(
                              children: List.generate(
                                1,
                                (index) => CustomText(
                                  e.adanTime,
                                  fontWeight: FontWeight.bold,
                                  height: 3,
                                  fontSize: 12.5,
                                ),
                              ),
                            ),
                            CustomText(
                              e.prayerTime,
                              fontWeight: FontWeight.bold,
                              height: 3,
                              fontSize: 12.5,
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrayerModel {
  final String prayerName, adanTime, prayerTime;

  const PrayerModel(this.prayerName, this.adanTime, this.prayerTime);
}
