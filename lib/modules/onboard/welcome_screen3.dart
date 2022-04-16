
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 2.h,),
        Center(
          child: Text(
            "PRINT",
            style: headTxtStyle,
          ),
        ),
        SizedBox(height: 1.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/photos.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),

            Column(
              children:  [
                  Text('Instant ',style: TxtStyleP),
                  Text('Delivery',style: TxtStyleP,),
              ],
            ),

            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/bcard.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),
          ],
        ),

        SizedBox(height: 2.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/xerox.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),

            Image.asset('assets/images/delv.png',width: 12.w,fit: BoxFit.fitWidth),

            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/images/flyer.png',width: 30.w,height: 5.h,fit: BoxFit.fill),),
          ],
        ),

      ],
    );
  }
}
