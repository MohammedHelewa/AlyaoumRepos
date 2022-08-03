import 'package:alyaoum/common/app_libraries.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../widgets/custom_outlined_button.dart';
import 'components/related_videos_component.dart';

class NewsVideosScreen extends StatefulWidget {
  const NewsVideosScreen({Key? key}) : super(key: key);

  @override
  State<NewsVideosScreen> createState() => _NewsVideosScreenState();
}

class _NewsVideosScreenState extends State<NewsVideosScreen> {

  late YoutubePlayerController _controller;

  @override
  void initState(){
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=xY49FHsP2Hc')!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        hideThumbnail: true,
      )
    );
    super.initState();
  }

  @override
  void deactivate(){
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Sizes.radius_10),
                    child: YoutubePlayerBuilder(
                      player: YoutubePlayer(controller: _controller,
                      // thumbnail: const Icon(Icons.play_arrow,color: Colors.red, size: 100),
                        showVideoProgressIndicator: false,
                      ),
                      builder: (context, player)=> player,
                    ),
                  ),
                  SizedBox(height: Sizes.height_15),
                  CustomText('اصابة ميسي في بداية المبارة وسيطرة الريال', fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor, fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 16, maxLines: 4),
                  SizedBox(height: Sizes.height_10),
                  Row(
                    children: [
                      const CircleAvatar(backgroundImage: NetworkImage('https://www.westernunion.com/staticassets/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png'),),
                      SizedBox(width: Sizes.width_10),
                      CustomText('اسم الكاتب.', fontWeight: FontWeight.bold, alignment: AlignmentDirectional.centerStart, fontSize: 12, fontColor: AppTheme.isLightTheme(context)? kBlackColor : kLightBlueColor,),
                      SizedBox(width: Sizes.width_5),
                      Icon(Icons.access_time_rounded, size: Sizes.size_12,color: kLightGrayColor),
                      SizedBox(width: Sizes.width_3),
                      const CustomText('منذ ساعة', fontWeight: FontWeight.w500, alignment: AlignmentDirectional.centerStart, fontSize: 10,fontColor: kLightGrayColor),
                    ],
                  ),
                  SizedBox(height: Sizes.height_5),
                  Row(
                    children: [
                      const CustomOutlinedButton(text: 'سياسة'),
                      SizedBox(width: Sizes.width_5),
                      const CustomOutlinedButton(text: '24/24'),
                    ],
                  ),
                  SizedBox(height: Sizes.height_5),
                  const CustomText('''يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.''',
                    fontWeight: FontWeight.w500,
                    alignment: AlignmentDirectional.centerStart,
                    fontColor: kGrayColor,
                    textOverflow: null,
                    height: 1.8,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.height_20),
            const RelatedVideosComponent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},label: const CustomText('مشاركة', fontSize: 12, fontWeight: FontWeight.bold, fontColor: kWhiteColor), icon: Icon(Icons.share, size: Sizes.iconSize_20, color: kWhiteColor)),
    );
  }
}
