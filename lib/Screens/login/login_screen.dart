import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furpixs/constants/image_strings.dart';
import 'package:furpixs/constants/sizes.dart';
import 'package:furpixs/constants/text_strings.dart';

import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header-widget.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loginHeaderWidget(size: size),
                const LoginForm(),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );

  }
  
}



