import 'package:flutter/material.dart';
import 'package:sawara_task/main.dart';
import 'package:sizer/sizer.dart';

final pagecont = PageController();

carousalwidget() {
  List data = [bisimage.b1, bisimage.b2, bisimage.b3];
  return Container(
    height: 25.h,
    width: 100.w,
    child: PageView.builder(
        controller: pagecont,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 2.h, right: 3.h, top: 3.h),
            child: Container(
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(data[index].toString()),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(2.h),),
            ),
          );
        },

        // separatorBuilder: (context, index) {
        //   return SizedBox(
        //     width: 2.h,
        //   );
        // },

        itemCount: 3),
  );
}
