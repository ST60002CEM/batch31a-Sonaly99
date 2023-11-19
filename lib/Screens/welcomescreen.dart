import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/Screens/login/login_screen.dart';
import 'package:furpixs/Signup/signup_screen.dart';
import 'package:furpixs/constants/colors.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height =  mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage(tWelcomeScreenImage), height: 500.0,),
            Column(
              children: [
                Text(tWelcomeTitle,
                  style:  Theme.of(context).textTheme.headlineMedium,),
                Text(tWelcomeSubTitle,
                  style:Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,),
              ],
            ),

            Row(
              children: [
                Expanded(child: OutlinedButton(
                  onPressed:() => Get.to(() => const LoginScreen()) ,
                  child: Text(tLogin.toUpperCase()),
                ),
                ),
                SizedBox( width: 10.0,),
                Expanded(child: ElevatedButton(onPressed: ()  => Get.to(() =>const SignUpScreen()),
                  child: Text(tSignup.toLowerCase(),),),),
              ],
            )

          ],
        ),
      ),
    );
  }

}