
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/app_color.dart';
import '../../utils/text_style.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 2.h,),
        Center(
          child: Text(
            "SCAN / UPLOAD",
            style: headTxtStyle,
          ),
        ),
        SizedBox(height: 1.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/sign.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),

              Text('AD FREE',style: TxtStyleP,),

            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/watermark.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),
        ],
        ),

        SizedBox(height: 2.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/cnvrt.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),

            Image.asset('assets/images/adds.png',width: 12.w,fit: BoxFit.fitWidth),

            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/scan.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),
        ],
        ),

      ],
    );
  }
}
