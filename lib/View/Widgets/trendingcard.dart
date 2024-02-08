import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sawara_task/main.dart';
import 'package:sizer/sizer.dart';

trendingcard() {
  List data = [bisimage.logo1, bisimage.logo2, bisimage.logo3];
  List datatitile = ["Author", "Movies", "Doctors"];
  return SizedBox(
    height: 20.h,
    width: 100.w,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 1.h,
            ),
            child: Container(
              height: 8.h,
              width: 75.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: gy),
                borderRadius: BorderRadius.circular(1.h),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 5.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: blr,
                          ),
                          borderRadius: BorderRadius.circular(36.w),
                          image: DecorationImage(
                              image: AssetImage(data[index].toString()))),
                    ),
                    title: alltext(
                        txt: datatitile[index].toString(),
                        col: bl,
                        siz: 11.sp,
                        wei: FontWeight.w700,
                        max: 1),
                    subtitle: alltext(
                        txt: "1,028 Meetups",
                        col: gy,
                        siz: 7.sp,
                        wei: FontWeight.w700,
                        max: 1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h, right: 2.h),
                    child: Divider(),
                  ),
                  //SizedBox(height: 1.h,),
                  SizedBox(
                    height: 5.h,
                    width: 100.w,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 3.h,
                        ),
                        Positioned(
                            left: 3.h,
                            child: CircleAvatar(
                              radius: 2.h,
                              backgroundImage: AssetImage(bisimage.auth1),
                            )),
                        Positioned(
                            left: 6.h,
                            child: CircleAvatar(
                              radius: 2.h,
                              backgroundImage: AssetImage(bisimage.auth2),
                            )),
                        Positioned(
                            left: 9.h,
                            child: CircleAvatar(
                              radius: 2.h,
                              backgroundImage: AssetImage(bisimage.auth3),
                            )),
                        Positioned(
                            left: 12.h,
                            child: CircleAvatar(
                              radius: 2.h,
                              backgroundImage: AssetImage(bisimage.auth4),
                            )),
                        Positioned(
                            left: 15.h,
                            child: CircleAvatar(
                              radius: 2.h,
                              backgroundImage: AssetImage(bisimage.auth5),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Container(
                      height: 3.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: blu),
                      child: Center(
                        child: alltext(
                            txt: "See more",
                            col: wh,
                            siz: 8.sp,
                            wei: FontWeight.bold,
                            max: 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 3),
  );
}
