
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../utilities/colors.dart';

Widget ratingstars() {
  return Container(
    height: 3.h,
    width: 26.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.h), color: gy.withOpacity(0.1)),
    child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      
      itemBuilder: (context, index) {
  
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(Icons.star, color:index==4||index==3? blu.withOpacity(0.2):blu,size: 2.h,),
      );
    }),
  );
}
