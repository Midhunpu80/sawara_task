import 'package:get/get.dart';

class pageindicatorController extends GetxController{


  var index = 0.obs;
  change(var index){
    index.value = index;
    update();
    

  }

}