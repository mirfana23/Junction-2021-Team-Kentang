import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_long_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/discover_smaller_card.dart';
import 'package:meditation/widgets/svg_asset.dart';

class ChartsPage extends StatefulWidget {
  const ChartsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChartsPage> createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image(
                          image: AssetImage('assets/pics/statistics.png'),
                          width: 34.w,
                          height: 34.w),
                      SizedBox(height: 1.w),
                      Ink(width: 34.w, height: 2.w, color: Color(0xFF0000FF))
                    ],
                  ),
                  SizedBox(width: 10.w),
                  Text("Analytics",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 34.w,
                          fontWeight: FontWeight.bold)),
                  InkWell(
                    borderRadius: BorderRadius.circular(360),
                    onTap: onSearchIconTapped,
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      child: Center(
                        child: SvgAsset(
                          assetName: AssetName.search,
                          height: 24.w,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 120.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryBoxes(
                        text: "Home",
                        onPressed: (value) => print(value),
                      ),
                      CategoryBoxes(
                        text: "Your Stats",
                        onPressed: (value) => print(value),
                      ),
                      CategoryBoxes(
                        text: "Forecast",
                        onPressed: (value) => print(value),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        color: Color(0xff515979),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.w),
                  ),
                  GestureDetector(
                      onTap: onSeeAllTapped,
                      child: Text("See All",
                          style: TextStyle(
                              color: Color(0xff4A80F0),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.w)))
                ],
              ),
            ),
            Container(
                height: 120.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 70.w, right: 70.w, top: 6.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DiscoverSmallerCard(
                        icon: Icon(Icons.water_outlined),
                        onTap: () {},
                        title: "Water",
                        gradientStartColor: Color(0xff6DB49B),
                        gradientEndColor: Color(0xffA7D794),
                      ),
                      DiscoverSmallerCard(
                        icon: Icon(Icons.power),
                        onTap: () {},
                        title: "Power",
                        gradientStartColor: Color(0xff1C2031),
                        gradientEndColor: Color(0xff4F4F4F),
                      ),
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.only(
                  left: 28.w, right: 28.w, top: 12.w, bottom: 8.w),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/pics/graph.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.w, top: 12.w),
              child: Text(
                "Today's Ranking",
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 12.h),
              child: DiscoverLongCard(
                icon: Icon(
                  Icons.people,
                  size: 48,
                ),
                onTap: () {},
                title: "TOP 10%\n#in your area",
                gradientStartColor: Color(0xFFDDC74E),
                gradientEndColor: Color(0xFF559EA2),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.w, top: 12.w),
              child: Text(
                "In-depth Analysis",
                style: TextStyle(
                    color: Color(0xff515979),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.w),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 12.h),
              child: DiscoverLongCard(
                icon: Icon(
                  Icons.shower,
                  size: 48,
                ),
                onTap: () {},
                title: "Hydractive Shower\nSaved +5%",
                gradientStartColor: Color(0xff13DEA0),
                gradientEndColor: Color(0xff06B782),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 12.h),
              child: DiscoverLongCard(
                icon: Icon(
                  Icons.wash,
                  size: 48,
                ),
                onTap: () {},
                title: "Optima Faucet\nSaved +10.2%",
                gradientStartColor: Color(0xFFDDC74E),
                gradientEndColor: Color(0xFF559EA2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 12.h),
              child: DiscoverLongCard(
                icon: Icon(
                  Icons.water_damage,
                  size: 48,
                ),
                onTap: () {},
                title: "Dishwasher\nSaved +25.8%",
                gradientStartColor: Color(0xff525B81),
                gradientEndColor: Color(0xff2E4E92),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSeeAllTapped() {}

  void onSleepMeditationTapped() {
    Get.to(() => DetailPage(), transition: Transition.rightToLeft);
  }

  void onDepressionHealingTapped() {}

  void onSearchIconTapped() {}
}
