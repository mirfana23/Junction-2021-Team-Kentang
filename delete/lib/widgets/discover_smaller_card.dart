import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/svg_asset.dart';

class DiscoverSmallerCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? gradientStartColor;
  final Color? gradientEndColor;
  final double? height;
  final double? width;
  final Widget? vectorBottom;
  final Widget? vectorTop;
  final double? borderRadius;
  final Widget? icon;
  final Function? onTap;
  const DiscoverSmallerCard(
      {Key? key,
      this.title,
      this.subtitle,
      this.gradientStartColor,
      this.gradientEndColor,
      this.height,
      this.width,
      this.vectorBottom,
      this.vectorTop,
      this.borderRadius,
      this.icon,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => onTap ?? () {},
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              gradientStartColor ?? Color(0xff441DFC),
              gradientEndColor ?? Color(0xff4E81EB),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Stack(
          children: [
            Container(
              height: 40.w,
              width: 100.w,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 40.w,
                width: 40.w,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 40.w,
                      width: 60.w,
                      child: SvgAsset(assetName: AssetName.vectorSmallBottom),
                    ),
                    SizedBox(
                      child: SvgAsset(
                          height: 40.w,
                          width: 40.w,
                          fit: BoxFit.fitHeight,
                          assetName: AssetName.vectorSmallTop),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.w,
              width: 100.w,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, top: 10.w, bottom: 10.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: Text(
                        title!,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 12.w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    icon ??
                        SvgAsset(
                          assetName: AssetName.headphone,
                          height: 24.w,
                          width: 24.w,
                        )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
