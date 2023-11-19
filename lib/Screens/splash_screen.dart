import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/constants/image_strings.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate =  false;
  @override
  void initState(){
    startAnimation();


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
           AnimatedPositioned(
            top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              duration: const Duration(milliseconds: 1),
              child: const Image(
                image: AssetImage(tSplashTopIcon),
              ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
           top: 80,
              left: animate ?  tDefaultSize : -80,
              child: AnimatedOpacity(
                opacity: animate ? 1: 0,
                duration: const Duration(milliseconds: 1600),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.headline3,),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.headline2,)
                  ],
                ),
              ),
          ),

          AnimatedPositioned( duration: const Duration(milliseconds: 2400),
            bottom: animate ? 100 : 0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: animate ? 1 : 0,
              child: const Image(image : AssetImage(tSplashImage)),

            )),
          AnimatedPositioned(
            bottom: animate ? 60 : 0,
              right: tDefaultSize,
            duration: const Duration(milliseconds: 2400),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: animate ? 1 : 0,
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


        ],
      ),
      );

  }

  Future startAnimation()async {
    await Future.delayed( const Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 500));
/*
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcomescreen));
*/
  }
  }
