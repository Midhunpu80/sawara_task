import 'package:flutter/material.dart';
import 'package:sawara_task/View/Widgets/otherLoginoptions.dart';
import 'package:sawara_task/View/Widgets/signinfields.dart';
import 'package:sawara_task/View/utilities/alltext.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/colors.dart';

class LoginScreen extends StatelessWidget {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  child: alltext(
                      txt: "promilio",
                      col: bl,
                      siz: 12.sp,
                      wei: FontWeight.bold,
                      max: 1)),
            ),
            SizedBox(
              height: 4.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  child: alltext(
                      txt: "Hi Welcome back !",
                      col: bl,
                      siz: 14.sp,
                      wei: FontWeight.bold,
                      max: 1)),
            ),
            SizedBox(
              height: 6.h,
            ),
            signinFields(),
            SizedBox(
              height: 3.h,
            ),
            alltext(
                txt: 'or', col: bl, siz: 12.sp, wei: FontWeight.bold, max: 1),
            SizedBox(
              height: 1.h,
            ),
            otherLoginIptions(),
            SizedBox(
              height: 3.h,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    alltext(
                        txt: "Buissness User ?",
                        col: gy,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1),
                    alltext(
                        txt: "Dont Have an Account",
                        col: gy,
                        siz: 12.sp,
                        wei: FontWeight.bold,
                        max: 1)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: SizedBox(
                          child: alltext(
                              txt: "Login Here",
                              col: blu,
                              siz: 11.sp,
                              wei: FontWeight.bold,
                              max: 1)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: SizedBox(
                          child: alltext(
                              txt: "Login Here",
                              col: blu,
                              siz: 11.sp,
                              wei: FontWeight.bold,
                              max: 1)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  child: alltext(
                      txt: "By continuing ,you agree to",
                      col: gy,
                      siz: 11.sp,
                      wei: FontWeight.w400,
                      max: 1)),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Promilios ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, color: gy),
                      ),
                      TextSpan(
                        text: 'Terms of Use & Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: bl,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
