import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sawara_task/View/Screen/DescriptionScreen/descriptionScreen.dart';
import 'package:sawara_task/View/Screen/HomeScreen/Homescreen.dart';
import 'package:sawara_task/View/utilities/colors.dart';
import 'package:sawara_task/main.dart';
import 'package:unicons/unicons.dart';

class bottomnavscreen extends StatelessWidget {
  List pages = [
    Homescreen(),
    descriptionScreen(),
    Homescreen(),
    descriptionScreen(),
    Homescreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
         unselectedLabelStyle: TextStyle(color: bl),
            selectedItemColor: blu,
            unselectedItemColor: blr,
            currentIndex: submit_controll.index.value,
            showUnselectedLabels: true,
            onTap: (value) {
              submit_controll.index.value = value;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    UniconsLine.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.view_comfy_alt_sharp,
                  ),
                  label: "Prolet"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.handshake,
                ),
                label: "Meetup",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.snippet_folder_outlined,
                  ),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(
                    UniconsLine.user,
                  ),
                  label: "Account")
            ]),
        body: pages[submit_controll.index.value],
      ),
    );
  }
}
