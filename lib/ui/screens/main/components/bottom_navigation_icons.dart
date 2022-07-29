import 'package:alyaoum/common/app_libraries.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIcons extends StatelessWidget {
  final String label;
  final Color iconColor;
  final Color fontColor;
  final String imageName;
  final VoidCallback? onTap;

  const BottomNavigationIcons({
    this.onTap,
    required this.label,
    required this.imageName,
    required this.iconColor,
    required this.fontColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: double.infinity,
        width: Sizes.width_80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imageName, color: iconColor),
            SizedBox(height: Sizes.height_8),
            CustomText(label, fontColor: fontColor, fontWeight: FontWeight.bold, fontSize: 12),
          ],
        ),
      ),
    );
  }
}
