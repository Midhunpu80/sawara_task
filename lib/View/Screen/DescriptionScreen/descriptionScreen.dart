import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sawara_task/View/Widgets/descriptionimages.dart';
import 'package:sawara_task/View/Widgets/descriptiontitlcard.dart';
import 'package:sawara_task/View/Widgets/rating.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sizer/sizer.dart';

class descriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: blr,
            )),
        title: alltext(
            txt: "Description",
            col: blr,
            siz: 13.sp,
            wei: FontWeight.w900,
            max: 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            descritionimages(),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                allbuttontext(
                    txt: "1034",
                    col: gy,
                    siz: 9.sp,
                    wei: FontWeight.bold,
                    ico: Icons.bookmark_border_outlined,
                    max: 1),
                allbuttontext(
                    txt: "1034",
                    col: gy,
                    siz: 9.sp,
                    wei: FontWeight.bold,
                    ico: Icons.favorite_outline,
                    max: 1),
                SizedBox(
                  width: 2.h,
                ),
                ratingstars(),
                SizedBox(
                  width: 2.h,
                ),
                alltext(
                    txt: "3.2", col: blu, siz: 9.sp, wei: FontWeight.bold, max: 1)
              ],
            ),
            desTiltecard(),
            SizedBox(height: 5.h,),
          ],
        ),
      ),
    );
  }
}
