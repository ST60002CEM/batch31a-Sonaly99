import 'package:furpixs/Screens/welcomescreen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate =  false.obs;

  Future startAnimation()async {
    await Future.delayed( const Duration(seconds: 3));
    animate.value = true;
    await Future.delayed(const Duration(seconds: 3));
    Get.to((WelcomeScreen()));
/*
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcomescreen));
*/
  }
}