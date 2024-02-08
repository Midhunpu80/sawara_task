
import 'package:flutter/material.dart';
import 'package:sawara_task/View/Widgets/carousal.dart';
import 'package:sawara_task/View/Widgets/searchbar.dart';
import 'package:sawara_task/View/Widgets/topmeeting.dart';
import 'package:sawara_task/View/Widgets/trendingcard.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/View/utilities/colors.dart';

import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: blr,size: 2.h,
            )),
        title: alltext(
            txt: "Individual Meetup",
            col: blr,
            siz: 13.sp,
            wei: FontWeight.w700,
            max: 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchbar(),
            carousalwidget(),
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 2.h),
              child: SmoothPageIndicator(
                controller: pagecont,
                count: 3,
                effect: WormEffect(
                    dotWidth: 1.h,
                    dotHeight: 1.h,
                    dotColor: bl.withOpacity(0.3),
                    activeDotColor: bl),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                      child: alltext(
                          txt: 'Trending Popular peoples',
                          col: blr,
                          siz: 10.sp,
                          wei: FontWeight.bold,
                          max: 1))),
            ),
            SizedBox(height: 1.h,),
            trendingcard(),
            Padding(
              padding: EdgeInsets.only(left: 2.h,top: 3.h),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                      child: alltext(
                          txt: 'Top Trending Meetup',
                          col: blr,
                          siz: 10.sp,
                          wei: FontWeight.bold,
                          max: 1))),
            ),
          ///  SizedBox(height: 1.h,),
            topmeetingcard(),
            SizedBox(height: 5.h,),
        
          ],
        ),
      ),
    );
  }
}
