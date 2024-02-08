import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sawara_task/View/Screen/HomeScreen/Homescreen.dart';
import 'package:sawara_task/View/Screen/bottomnavscreen/bottomnavscreen.dart';

import 'package:sawara_task/View/Widgets/textformfield.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sawara_task/main.dart';
import 'package:sizer/sizer.dart';

import '../utilities/colors.dart';

Widget signinFields() {
  final key = GlobalKey<FormState>();
  return Form(
    key: key,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                child: alltext(
                    txt: "Please Signin to Continue",
                    col: bl,
                    siz: 11.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ),
        ),
        customtextformfields(
            messege: 'please Enter your email or Mobile no',
            controller: submit_controll.emailcontroller,
            hint: "Enter Email or Mobile no"),
        Padding(
          padding: EdgeInsets.only(right: 3.h),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
                child: alltext(
                    txt: "Sign In With Otp",
                    col: blu,
                    siz: 11.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ),
        ),
        ////////////////////////////////////////////////////////////
        SizedBox(
          height: 1.h,
        ),

        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                child: alltext(
                    txt: "Password",
                    col: bl,
                    siz: 11.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ),
        ),
        customtextformfields(
            messege: 'please Enter your password',
            controller: submit_controll.passwordcontroller,
            hint: "Enter Password"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: gy,
                      ),
                      label: alltext(
                          txt: "Remember me ",
                          col: gy,
                          siz: 10.sp,
                          wei: FontWeight.w700,
                          max: 1))),
            ),
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                    child: alltext(
                        txt: "Sign In With Otp",
                        col: blu,
                        siz: 11.sp,
                        wei: FontWeight.bold,
                        max: 1)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Obx(
          () => InkWell(
              onTap: submit_controll.isempty.value
                  ? null
                  : () {
                      if (key.currentState!.validate()) {
                        if (submit_controll.emailcontroller.text.isNotEmpty ||
                            submit_controll
                                .passwordcontroller.text.isNotEmpty) {
                          signin_controller.signin(
                              email: submit_controll.emailcontroller.value.text,
                              password: submit_controll
                                  .passwordcontroller.value.text);
                         Get.to(() => bottomnavscreen());
                        }
                      } else {
                        // print('not');

                        /// submit_controll.check();
                      }
                    },
              child: Obx(
                () => submit_controll.isempty.value
                    ? Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.h),
                            color: blu.withOpacity(0.2),
                            border: Border.all(width: 3, color: blu)),
                        child: Center(
                          child: alltext(
                              txt: "Submit",
                              col: wh,
                              siz: 13.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      )
                    : Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          color: blu,
                        ),
                        child: Center(
                          child: alltext(
                              txt: "Submit",
                              col: wh,
                              siz: 13.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        ),
                      ),
              )),
        )
      ],
    ),
  );
}
