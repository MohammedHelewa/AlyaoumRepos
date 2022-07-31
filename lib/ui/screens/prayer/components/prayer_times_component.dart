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
    'التنبيه',
  ];

  final List<PrayerModel> _prayersList = const [
    PrayerModel('الفجر', '5:30 ص', '5:45 ص', Icons.notifications_rounded),
    PrayerModel('الشروق', '5:30 ص', '5:45 ص', Icons.notifications_rounded),
    PrayerModel('الظهر', '5:30 ص', '5:45 ص', Icons.notifications_rounded),
    PrayerModel('العصر', '5:30 ص', '5:45 ص', Icons.notifications_off_rounded),
    PrayerModel('المغرب', '5:30 ص', '5:45 ص', Icons.notifications_rounded),
    PrayerModel('العشاء', '5:30 ص', '5:45 ص', Icons.notifications_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText('اوقات الصلاة', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 24, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor),
        SizedBox(height: Sizes.height_15),
        Container(
          width: double.infinity,
          padding: EdgeInsetsDirectional.fromSTEB(Sizes.width_25, Sizes.height_20, 0, Sizes.height_20),
          decoration: BoxDecoration(
            color: kLightBlueColor,
            boxShadow: AppShadows.boxShadow03,
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
                        padding: EdgeInsetsDirectional.only(bottom: Sizes.height_10),
                        child: CustomText(
                          _columnTitles[index],
                          alignment: index == 3
                              ? AlignmentDirectional.center
                              : AlignmentDirectional.centerStart,
                          fontSize: 15,
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
                              height: 3.5,
                              fontWeight: FontWeight.bold,
                              alignment: AlignmentDirectional.centerStart,
                            ),
                            Column(
                              children: List.generate(
                                1,
                                (index) => CustomText(
                                  e.adanTime,
                                  alignment: AlignmentDirectional.centerStart,
                                  fontWeight: FontWeight.bold,
                                  height: 3.5,
                                ),
                              ),
                            ),
                            CustomText(
                              e.prayerTime,
                              alignment: AlignmentDirectional.centerStart,
                              fontWeight: FontWeight.bold,
                              height: 3.5,
                            ),
                            Align(
                              alignment: AlignmentDirectional.center,
                              child: Icon(e.notificationIcon, color: e.notificationIcon == Icons.notifications_off_rounded ? kLightGrayColor : kPrimaryColor),
                            )
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
  final IconData notificationIcon;

  const PrayerModel(this.prayerName, this.adanTime, this.prayerTime, this.notificationIcon);
}
