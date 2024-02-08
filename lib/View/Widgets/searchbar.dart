import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

Widget searchbar() {
  return Padding(
    padding: EdgeInsets.only(left: 3.h, right: 3.h),
    child: Container(
      height: 7.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1.h),
          border: Border.all(width: 1, color: blr)),
      child: ListTile(
        leading: Icon(
          UniconsLine.search,
          color: blr,
        ),
        trailing: Icon(Icons.mic_none,color: blr,),
        title: alltext(
            txt: "Search", col: gy, siz: 13.sp, wei: FontWeight.w400, max: 1),
      ),
    ),
  );
}
