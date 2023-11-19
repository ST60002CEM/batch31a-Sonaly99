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
              duration: const Duration(seconds: 2),
              child: Transform.scale(
                scale: 0.8,
              child: const Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
          ),
          ),
          Obx( () =>
            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(seconds: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,),
                    Text(tAppTagLine, style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,)
                  ],
                ),
              ),
            ),
          ),

          Obx(() =>
            AnimatedPositioned(duration: const Duration(seconds: 2),
                bottom: splashController.animate.value ? 100 :
                MediaQuery.of(context).size.height / 2 - tSplashContainerSize / 2 ,
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 2),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Image(image: AssetImage(tSplashImage)),

                )),
          ),
          Obx(() => AnimatedPositioned(
              bottom: splashController.animate.value ? 60 : 0,
              right: tDefaultSize,
              duration: const Duration(seconds: 2),
              child: AnimatedOpacity(
                duration: const Duration(seconds: 2),
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

