import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sawara_task/main.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:unicons/unicons.dart';

import '../utilities/colors.dart';

descritionimages() {
  List data = [bisimage.s1, bisimage.s2, bisimage.s3];
  final newpage = PageController();
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(2.h),
        child: Container(
          height: 50.h,
          width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    2.h,
                  ),
                  topRight: Radius.circular(2.h)),
              color: gy.withOpacity(0.1)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 43.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              2.h,
                            ),
                            topRight: Radius.circular(2.h)),
                        color: gy.withOpacity(0.2)),
                    child: PageView.builder(
                        controller: newpage,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 6.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(data[index].toString()),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(2.h),
                                color: blu),
                          );
                        },
                        itemCount: 3),
                  ),
                  Positioned(
                    bottom: 4.h,
                    left: 20.h,
                    child: SmoothPageIndicator(
                      controller: newpage,
                      count: 3,
                      effect: WormEffect(
                          dotWidth: 1.h,
                          dotHeight: 1.h,
                          dotColor: wh.withOpacity(0.3),
                          activeDotColor: wh),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    UniconsLine.download_alt,
                    color: gy,
                  ),
                  Icon(
                    Icons.bookmark_outline,
                    color: gy,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: gy,
                  ),
                  const Icon(Icons.fullscreen),
                  const Icon(Icons.star_outline),
                InkWell(
                  
                  onTap: (){
                     Share.share('Check out this amazing content!',
                subject: 'Sharing content');
                  },
                  child: Container(child: Icon(Icons.share)))
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}
