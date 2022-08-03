import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppNetworkImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String path;
  final BoxFit fit;
  final BlendMode? colorBlendMode;
  final Color? imageColor;
  final double radius;
  final Color? backgroundColor;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;

  const AppNetworkImage({
    Key? key,
    required this.path,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.imageColor,
    this.colorBlendMode,
    this.radius = 0.0,
    this.backgroundColor,
    this.boxShadow,
    this.border,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor,
            boxShadow: boxShadow,
            border: border,
          ),
          child: Image.network(
            path,
            fit: fit,
            height: height,
            width: width,
            colorBlendMode: colorBlendMode,
            color: imageColor,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Lottie.asset(
                'assets/json/lazy_load.json',
                fit: BoxFit.cover,
                height: height,
                width: width,
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Icon(Icons.error_outline));
            },
          ),
        ),
      ),
    );
  }
}
