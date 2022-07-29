import 'package:alyaoum/common/app_libraries.dart';

import '../components/hot_menu_component.dart';
import '../components/news_component.dart';
import '../components/weather_component.dart';

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
        children: const [
          WeatherComponent(),
          HotMenuComponent(text: 'اخبار الجالية'),
          NewsComponent(),
        ],
      ),
    );
  }
}
