import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawara_task/Controller/pageindicatorController.dart';
import 'package:sawara_task/Controller/submitbuttoncontroller.dart';
import 'package:sawara_task/View/Screen/Auth/Loginscreen/loginscreen.dart';
import 'package:sawara_task/View/service/authservice.dart';
import 'package:sawara_task/View/utilities/images.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

final submit_controll = Get.put(submitcontroller());
final signin_controller = Get.put(signin_service());
final page_controller = Get.put(pageindicatorController());
buissnessimages bisimage = buissnessimages();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    return Sizer(builder: (BuildContext, Orientation, DeviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        home: Scaffold(body: LoginScreen()),
      );
    });
  }
}
