import 'package:flutter/material.dart';

class SliderWithBanners extends StatelessWidget {
  const SliderWithBanners({
    super.key,
    this.width,
    this.height,
    required this.image,
    this.applyImageRadius = true,
    this.border,
    this.backGroundColor = Colors.white38,
    this.fit = BoxFit.fill,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.borderRadius = 20,
  });

  final double? width, height;
  final String image;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backGroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
