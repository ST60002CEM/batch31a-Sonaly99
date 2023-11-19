import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/constants/image_strings.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
          ),
          Positioned(
            bottom: 100,
            child: Image(image: AssetImage(tSplashImage)),
          ),
          /*Positioned(
            bottom: 40,
              right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),

          ),
          */

        ],
      ),

    );
  }

}