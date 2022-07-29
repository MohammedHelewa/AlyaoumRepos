import 'package:alyaoum/common/app_libraries.dart';

import '../components/hot_menu_component.dart';
import '../components/news_list_view_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedMenuItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(0,0,0,Sizes.height_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HotMenuComponent(text: 'اخبار الجالية', selectedMenuItemIndex: selectedMenuItemIndex),
          const NewsListViewComponent(),
        ],
      ),
    );
  }
}
