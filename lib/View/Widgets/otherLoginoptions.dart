import 'package:flutter/material.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sawara_task/View/utilities/images.dart';
import 'package:sizer/sizer.dart';

otherLoginIptions() {
  List<String> logos = [
    googleimage,
    linkedinimage,
    facebookimage,
    instagramimage,
    whatsappimage
  ];
  return Container(
    height: 6.h,
    width: 70.w,
    //  color: blu,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print("cliecked");
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 8.h,
                width: 13.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(logos[index].toString()),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: logos.length),
  );
}
