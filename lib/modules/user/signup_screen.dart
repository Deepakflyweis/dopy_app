import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final signupFormKey = GlobalKey<FormState>();
  final emailFormKey = GlobalKey<FormState>();

  final _pswd = TextEditingController();
  final _email = TextEditingController();

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

                  child: Form(
                     key: signupFormKey,
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
                                onTap: (){},
                                child: Text('Skip',style: TxtStyleP, )),
                          ],
                        ),

                        SizedBox(height: 15.h,),

                        Text('Create an account',style: TxtStyleTitle),

                        SizedBox(height: 5.h,),

                        Form(
                          key: emailFormKey,
                          child: Container(
                            height: 7.h,
                            width: 85.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              // border: Border.all(width: 1.8 ,color: blckclr,),
                              borderRadius: BorderRadius.circular(22.0),
                              color: Colors.grey[200]
                            ),
                            child: TextFormField(
                              controller: _email,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Field can\'t be empty';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(12.0),
                                  border: InputBorder.none,
                                  hintText: '   Email Address',

                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),

                        Container(
                          height: 7.h,
                          width: 85.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // border: Border.all(width: 1.8 ,color: blckclr,),
                            borderRadius: BorderRadius.circular(22.0),
                            color: Colors.grey[200]
                          ),
                          child: TextFormField(
                            controller: _pswd,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                border: InputBorder.none,
                                hintText: '    Password',

                            ),
                          ),
                        ),
                        SizedBox(height: 3.h,),

                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            height: 6.h,
                            width: 85.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: btnclr
                            ),
                            child:  const Text('Create an Account',
                              style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text('I already have an account',style: TxtStyleP,),

                        Divider(indent: 100,endIndent: 100,color: Colors.grey,thickness: 1.5),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Image.asset('assets/images/mob.png',
                                height: 3.h,width: 5.w,
                                fit: BoxFit.fill),
                            Text('Continue with Phone number',style: TxtStyleN),
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Image.asset('assets/images/gg.png',
                                height: 3.h,width: 5.w,
                                fit: BoxFit.fill),
                            Text('Continue with Google',style: TxtStyleN),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Image.asset('assets/images/fb.png',
                                height: 3.h,width: 5.w,
                                fit: BoxFit.fill),
                            Text('Continue with Facebook',style: TxtStyleN),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}
