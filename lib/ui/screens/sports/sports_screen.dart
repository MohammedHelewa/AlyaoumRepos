import 'package:alyaoum/common/app_libraries.dart';

import '../components/hot_menu_component.dart';
import '../components/news_component.dart';
import 'components/matches_slider_component.dart';
import 'components/upcoming_matches_component.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(0,0,0,Sizes.height_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HotMenuComponent(text: 'مبارايات اليوم'),
          MatchesSliderComponent(),
          UpcomingMatchesComponent(),
          NewsComponent(),
        ],
      ),
    );
  }
}




