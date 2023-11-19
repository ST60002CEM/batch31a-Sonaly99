import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/Screens/controller/splash_screen_controller.dart';
import 'package:furpixs/constants/image_strings.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
          () => AnimatedPositioned(
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              duration: const Duration(milliseconds: 1),
              child: const Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
          ),
          Obx( () =>
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme
                        .of(context)
                        .textTheme
                        .headline3,),
                    Text(tAppTagLine, style: Theme
                        .of(context)
                        .textTheme
                        .headline2,)
                  ],
                ),
              ),
            ),
          ),

          Obx(() =>
            AnimatedPositioned(duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 100 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Image(image: AssetImage(tSplashImage)),

                )),
          ),
          Obx(() => AnimatedPositioned(
              bottom: splashController.animate.value ? 60 : 0,
              right: tDefaultSize,
              duration: const Duration(milliseconds: 2400),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),

            ),
          ),


        ],
      ),
    );
  }
}

