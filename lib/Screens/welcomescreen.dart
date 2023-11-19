import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/constants/colors.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';

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
            const Image(image: AssetImage(tWelcomeScreenImage), height: 0.6,),
            Column(
              children: [
                Text(tWelcomeTitle,
                  style:  Theme.of(context).textTheme.headline3,),
                Text(tWelcomeSubTitle,
                  style:Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,),
              ],
            ),

            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed:(){} ,

                  child: Text(tLogin.toUpperCase(),),),),
                SizedBox( width: 10.0,),
                Expanded(child: ElevatedButton(onPressed: (){},
                  child: Text(tSignup.toLowerCase(),),),),
              ],
            )

          ],
        ),
      ),
    );
  }

}