
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

 class WelcomeScreen extends StatelessWidget {
   const WelcomeScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return ListView(
       children: [
         SizedBox(height: 3.h,),
         Center(
           child: Text(
           "Hi! There,",
           style: headTxtStyle,
         ),
         ),
         Center(
           child: Text(
           " Do You Need a Printout?",
           style: headTxtStyle,
         ),
         ),
         Center(
           child: Text(
           " Documents, Photos, Xerox, Business Cards,",
           style: TxtStyleN,
         ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children:   [
              Text('Flyers in just ',
                style: TxtStyleN,),
              Text('3 Click & 30 Minutes',style: const TextStyle(color: pinkclr,fontSize: 16,fontFamily: 'Poppins'),)
            ],
         )
       ],
     );
   }
 }

