import 'package:flutter/material.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sawara_task/main.dart';
import 'package:sizer/sizer.dart';

customtextformfields({
  required TextEditingController controller,
  required var hint,
  required var messege,
}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: SizedBox(
      width: 90.w,
      child: TextFormField(
        onChanged: (val) {
          submit_controll.check(val);
        },
        controller: controller,
        decoration: InputDecoration(
            labelStyle: TextStyle(
                fontSize: 13.sp, fontWeight: FontWeight.bold, color: bl),
            hintText: hint,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(2.h))),
        validator: (value) {
          if (value!.isEmpty || value == null) {
            return messege;
          } else {
            return null;
          }
        },
      ),
    ),
  );
}
