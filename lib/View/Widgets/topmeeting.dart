

import 'package:flutter/widgets.dart';
import 'package:sawara_task/main.dart';
import 'package:sizer/sizer.dart';

import '../utilities/colors.dart';

topmeetingcard(){
  return  SizedBox(
    height: 25.h,
    width: 100.w,
    child: ListView.separated(
      
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 2.h, right: 0.h, top: 3.h),
            child: Container(
              height: 6.h,
              width: 42.w,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(bisimage.meetup.toString(),),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(2.h), color: blu),
            ),
          );
        },

        separatorBuilder: (context, index) {
          return SizedBox(
            width: 0.h,
          );
        },

        itemCount: 3),
  );
}