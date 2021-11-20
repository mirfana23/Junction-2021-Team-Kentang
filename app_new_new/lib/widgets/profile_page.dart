import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';
import 'package:meditation/widgets/resizable_box.dart';
import 'package:meditation/widgets/svg_asset.dart';

class ExpenseScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext build){
    return Column(
      children: [
        Text(
          "If you keep this up, ",
          style: TextStyle(
            fontSize: 24.w,
            fontWeight: FontWeight.bold
          )
        ),
        SizedBox(height : 20.h),
        Text(
          "Next Month's Expense : ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize : 32.w
          )
        ),
        Text(
          "Eur.79.67",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 48.w
          )
        )
      ]
    );
  }
}

class TargetView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Our Target", 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.w
          )
        ),
        SizedBox(height : 10.h),
        ResizableBox(
          borderRadius  : 26,
          gradientStart : Color(0xFF78C5B3),
          gradientEnd   : Color(0xFFFC67A7),
          color         : Color(0x00000000),
          width         : 320.w,
          height        : 117.w,
          child         : Stack(
            children: [
              SizedBox(
                height: 320.w,
                width: 117.w,
                child: SvgAsset(
                  height: 320.w,
                  width : 117.w,
                  assetName: AssetName.vectorSmallBottom
                ),
              ),
              SizedBox(
                height: 320.w,
                width: 117.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Eur.79.67",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.w,
                        color : Colors.white
                      )
                    ),
                    SizedBox(height : 1.w),
                    Text(
                      "compared to last month",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.w,
                        color: Colors.white
                      )
                    )
                  ]
                )
              )
            ]
          ),
        )
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              child: Column(
                crossAxisAlignment : CrossAxisAlignment.start,
                children : [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                          Image(
                            image : AssetImage('pics/Water.png'),
                            width : 34.w,
                            height: 34.w
                          ),
                          SizedBox(height : 1.w),
                          Ink(width : 34.w, height: 2.w, color: Color(0xFF0000FF))
                        ],
                      ),
                      SizedBox(width : 10.w),
                      Text("Forecast",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 34.w,
                            fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                  Text("Future expense due to water use",
                    textAlign : TextAlign.left, 
                    style : TextStyle(
                      color    : Colors.black,
                      fontSize : 12.w,
                    )
                  ),                
                ]
              )
            ),
            Container(
              height: 120.h,
              child: Padding(
                padding : EdgeInsets.only(left : 25.w, right : 25.w),
                child   : Row(
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
              )
            ),
            SizedBox(height : 30.h),
            ExpenseScreen(),
            SizedBox(height : 30.h),
            TargetView()  
          ],
        ),
      ),
    );
  }
  void onSeeAllTapped() {
  }

  void onSleepMeditationTapped() {
    Get.to(()=> DetailPage(), transition: Transition.rightToLeft);
  }

  void onDepressionHealingTapped() {
  }

  void onSearchIconTapped() {
  }
}
