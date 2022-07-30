import 'package:alyaoum/common/app_libraries.dart';

import 'components/prayer_time_now_card_component.dart';
import 'components/prayer_times_component.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10, Sizes.vertical_15, Sizes.horizontal_10, Sizes.height_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PrayerTimeNowCardComponent(),
          SizedBox(height: Sizes.height_40),
          const PrayerTimesComponent(),
        ],
      ),
    );
  }
}