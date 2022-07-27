import 'package:alyaoum/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String text;
  final AlignmentDirectional alignment;
  final Color fontColor;
  final double fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign textAlign;
  final List<Shadow>? shadows;
  final bool isUnderline;
  final double? height;

  const CustomText(
    this.text, {
    this.alignment = AlignmentDirectional.center,
    this.fontColor = AppColors.fontPrimaryColor,
    this.fontSize = 14.0,
    this.fontWeight,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.shadows,
    this.isUnderline = false,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text.tr,
        textAlign: textAlign,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          fontFamily: 'Tajawal',
          decoration: isUnderline ? TextDecoration.underline : null,
          height: height
        ),
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
