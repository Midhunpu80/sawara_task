import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sizer/sizer.dart';

desTiltecard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 2.h,
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Align(
          alignment: Alignment.topLeft,
          child: alltext(
              txt: "Actor Name",
              col: blr,
              siz: 10.sp,
              wei: FontWeight.bold,
              max: 1),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Align(
          alignment: Alignment.topLeft,
          child: alltext(
              txt: "Indian Actress",
              col: gy,
              siz: 8.sp,
              wei: FontWeight.w400,
              max: 1),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.lock_clock,
              color: gy,
              size: 2.h,
            ),
            alltext(
                txt: "   Duration 20 Mins",
                col: gy,
                siz: 9.sp,
                wei: FontWeight.w400,
                max: 1)
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.wallet,
              color: gy,
              size: 2.h,
            ),
            alltext(
                txt: "  Total Average Fees ₹947885",
                col: gy,
                siz: 9.sp,
                wei: FontWeight.w400,
                max: 1)
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Align(
          alignment: Alignment.topLeft,
          child: alltext(
              txt: "About", col: blr, siz: 12.sp, wei: FontWeight.bold, max: 1),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.h,top: 2.h, right: 1.h),
        child: Align(
          alignment: Alignment.topLeft,
          child: alltext(
              txt: "Indian Actressdnfkjbfkfbkkfk" * 180,
              col: gy,
              siz: 9.sp,
              wei: FontWeight.w600,
              max: 5),
        ),
      ),
      //     Padding(
      //   padding:EdgeInsets.only(left: 1.h),
      //   child: Align(
      //     alignment: Alignment.topLeft,
      //     child:  allbuttontext(
      //       size: 2.h,
      //             txt: "Duration 20 Mins",
      //             col: gy,
      //             siz: 9.sp,
      //             wei: FontWeight.bold,
      //             ico: Icons.timer,
      //             max: 1) ,),
      // ),
      // Padding(
      //   padding:EdgeInsets.only(left: 1.h),
      //   child: Align(
      //     alignment: Alignment.topLeft,
      //     child:  allbuttontext(
      //       size: 2.h,
      //             txt: "Total Average Fees ₹947885",
      //             col: gy,
      //             siz: 9.sp,
      //             wei: FontWeight.bold,
      //             ico: Icons.timer,
      //             max: 1) ,),
      // )
    ],
  );
}
