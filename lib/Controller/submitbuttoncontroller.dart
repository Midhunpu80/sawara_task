import 'package:flutter/material.dart';
import 'package:get/get.dart';

class submitcontroller extends GetxController {
var  index = 0.obs;

  var isempty = true.obs;

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  check(var val) {
    try {
      isempty.value = true;
      if (emailcontroller.value.text.isNotEmpty ||
          passwordcontroller.value.text.isNotEmpty) {
        print("empty${passwordcontroller.text}");
        isempty.value = false;
        update();
      } else {
        print("not empty${passwordcontroller.text}");
        isempty.value = false;
        update();
      }
    } catch (e) {
      print(e.toString());
      isempty.value = false;
    }
    update();
  }
}
