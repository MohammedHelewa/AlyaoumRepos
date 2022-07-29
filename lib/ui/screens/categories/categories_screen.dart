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
              child: const CustomText('السياسة',alignment: AlignmentDirectional.center,fontColor: kWhiteColor,fontWeight: FontWeight.w500,fontSize: 12),
          ),
          child: AppNetworkImage(
            path: 'https://scontent.fgza6-1.fna.fbcdn.net/v/t39.30808-6/225814350_4279480448839950_4408196824546391637_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lDgW8zc3MLYAX90jK3S&_nc_ht=scontent.fgza6-1.fna&oh=00_AT_NDF_PVyC_m6UuKh3m1ad8PB1HqfwXa6kvuf45H76Cwg&oe=62E86D5F',
            fit: BoxFit.cover,
            radius: Sizes.radius_10,
            backgroundColor: kGrayColor.withOpacity(0.2),
          ),
        ),
    );
  }
}
