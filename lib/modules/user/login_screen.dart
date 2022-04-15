
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/background_stack.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 95.h,
                  width: 100.w,
                  decoration:   const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18) ,
                        topLeft:  Radius.circular(18)),
                        image: DecorationImage(
                        image: AssetImage("assets/images/bckgrnd.png"),fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Image.asset('assets/images/bckgrnd.png'),
                          )
                        ],
                      ),
                      Text(
                        "Hi! There,",
                        style: headTxtStyle,
                      ),
                    ],
                  ),

                )
              ],
            ),
          ),
        ));
  }
}
