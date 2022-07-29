import 'package:alyaoum/common/app_libraries.dart';
import '../components/hot_menu_component.dart';
import 'components/news_videos_component.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(0,0,0,Sizes.height_80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HotMenuComponent(text: 'اخبار الجالية'),
          NewsVideosComponent(),
        ],
      ),
    );
  }
}
