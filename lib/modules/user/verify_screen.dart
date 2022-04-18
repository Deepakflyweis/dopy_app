import 'package:dopy_app/controllers/otp_verify_controller.dart';
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/utility/utility_appbar.dart';
import 'package:dopy_app/widgets/otp_input.dart';
import 'package:flutter/material.dart';

import '../../utils/text_style.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final verifyFormKey = GlobalKey<FormState>();

  final VerifyController _verifyController = Get.put(VerifyController());

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
                  height: 70.h,
                  decoration:   const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white12,
                    // border: Border.all(width: 2.0 ,color: whiteclr,),
                  ),

                  child: Form(
                    key: verifyFormKey,
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

                        SizedBox(height: 10.h,),

                        Text('Verify Phone',style: TxtStyleTitle),
                        SizedBox(height: 2.h,),
                        const Text('Code is sent to +91 7337 01 6565 ',
                          style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3.h,),
                        Form(
                          key: _verifyController.otpkey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 6; i++)
                                OtpInput(
                                  validator: _verifyController.otpvalidator,
                                  controller: _verifyController.otp[i],
                                  autoFocus: i == 0 ? true : false,
                                )
                            ],
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             const Text('Didn’t recieve code?',
                              style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),
                            Text('  Request again ',style: TxtStyleP,)
                          ],
                        ),
                        Text('  via SMS',style: TxtStyleP,),
                        SizedBox(height: 2.h,),
                        Divider(indent: 100,endIndent: 100,color: Colors.grey,thickness: 2.0),
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
                              child:  const Text('Verify & Continue',
                                style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold),)
                          ),
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
