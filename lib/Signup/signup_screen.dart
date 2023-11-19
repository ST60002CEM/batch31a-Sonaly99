import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/Screens/common%20widgets/form/form_header_widget.dart';
import 'package:furpixs/Signup/widgets/signup_form_widget.dart';
import 'package:furpixs/constants/colors.dart';
import 'package:furpixs/constants/image_strings.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       body: SingleChildScrollView(
         child: Container(
           padding: EdgeInsets.all(tDefaultSize),
           child:  Column(
             children: [
               FormHeaderWidget(image: tWelcomeScreenImage, title: tSignUpTitle, subTitle: tSignUpSubTitle),
               SignUpFormWidget(),
               Column(
                 children: [
                   const Text("Or"),
                   SizedBox(
                     width: double.infinity,
                     child: OutlinedButton.icon(
                         onPressed: (){}, icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0,),
                         label:const Text(tSignInWithGoogle),
                   )
                   ),
                   TextButton(onPressed: (){},
                       child: Text.rich(TextSpan(
                         children: [
                           TextSpan(text:tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium),
                           TextSpan(text: tLogin.toUpperCase())
                         ]
                       )))
                 ],
               )
             ],
           ),
         ),
       ),
     ),
   );
  }

}

