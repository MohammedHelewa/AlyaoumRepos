import 'package:alyaoum/common/app_libraries.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
        padding: EdgeInsetsDirectional.fromSTEB(Sizes.horizontal_10,Sizes.vertical_15,Sizes.horizontal_10,Sizes.height_80),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: Sizes.height_5,
          crossAxisSpacing: Sizes.width_5,
        ),
        itemBuilder: (context, index)=> GridTile(
          footer: Container(
            height: Sizes.height_30,
            padding: EdgeInsets.symmetric(horizontal: Sizes.width_5),
            decoration: BoxDecoration(
              color: kBlackColor.withOpacity(0.6),
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(Sizes.radius_10),
                bottomEnd: Radius.circular(Sizes.radius_10),
              ),
            ),
              child: const CustomText('السياسة', alignment: AlignmentDirectional.center, fontColor: kWhiteColor,fontWeight: FontWeight.w500, fontSize: 10),
          ),
          child: AppNetworkImage(
            path: 'https://play-lh.googleusercontent.com/3eRuKe0cNDlsxKUcqkp8BuyWJlLisXEEip-FxPf_6Qeyfz4HEYtElNj9jkn-nU2_UH0',
            fit: BoxFit.cover,
            radius: Sizes.radius_10,
            backgroundColor: kLightGrayColor.withOpacity(0.2),
          ),
        ),
    );
  }
}
