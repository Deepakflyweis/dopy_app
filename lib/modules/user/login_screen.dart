
import 'package:dopy_app/modules/user/signup_screen.dart';
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

  final loginFormKey = GlobalKey<FormState>();
  final _mobno = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: Stack(
        children: [
          Image.asset('assets/images/bckgrnd.png',
              height: 100.h,width: 100.w,
              fit: BoxFit.cover),

              Container(
                width: 100.w,
                decoration:   const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25) ,
                          topLeft:  Radius.circular(25)),
                            color: Colors.white12,
                  // border: Border.all(width: 2.0 ,color: whiteclr,),
                        ),

                child: Column(
                  children: [
                    SizedBox(height: 8.h,),
                     Row(
                       children: [
                         SizedBox(width: 5.w,),
                         GestureDetector(
                           onTap: (){},
                           child: Image.asset('assets/images/crsoss.png',width: 8.w,fit: BoxFit.fill),),

                          SizedBox(width: 75.w,),

                         GestureDetector(
                             onTap: (){
                               Get.to(()=> SignupScreen());
                             },
                             child: Text('Skip',style: TxtStyleP, )),
                       ],
                     ),

                    Center(
                        child: Text('Continue with Phone',style: TxtStyleTitle)),
                   Image.asset('assets/images/Networksecurity.png',width: 90.w,fit: BoxFit.fill),
                    const Text(
                      'You’ll recieve a 4 digit code to verify',
                      style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),

                    Divider(indent: 40,endIndent: 40,color: Colors.grey,thickness: 1.5),

                    SizedBox(height: 2.h,),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                         '            Enter Phone Number',
                        style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600),),
                      ),

                    Container(
                      height: 7.h,
                      width: 90.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.8 ,color: blckclr,),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Row(
                        children: [
                          Form(
                            child: Expanded(
                              child: Form(
                                key: loginFormKey,
                                child: TextFormField(
                                 controller: _mobno,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(12.0),
                                    border: InputBorder.none,
                                    hintText: '829 2809 332',
                                    hintStyle: TextStyle(fontWeight: FontWeight.bold)
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Image.asset('assets/images/cntinue.png',
                                height: 7.h ,width: 40.w,fit: BoxFit.fill),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      )
        );

  }
}
