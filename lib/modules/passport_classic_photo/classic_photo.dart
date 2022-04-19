
import 'package:dopy_app/modules/home/home_index.dart';
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:dopy_app/utils/utility/container_box.dart';
import 'package:dopy_app/utils/utility/utility_appbar.dart';
import 'package:dopy_app/widgets/background_stack.dart';
import 'package:flutter/material.dart';

class ClassicPhoto extends StatefulWidget {
  const ClassicPhoto({Key? key}) : super(key: key);

  @override
  State<ClassicPhoto> createState() => _ClassicPhotoState();
}

class _ClassicPhotoState extends State<ClassicPhoto> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: BackgroundScreen(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      width: 100.w,
                      height: 15.h,
                      child: Image.asset('assets/images/addss.png', fit: BoxFit.fill,)),
                  SizedBox(height: 1.h,),
                  Container(
                    height: 50.h ,
                    width: 85.w,
                    decoration: BoxDecoration(
                        color: conbackclr,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: ListView(
                      children: [
                        Container(
                            width: 100.w,
                            height: 6.h,
                            color: pinkclr,
                            alignment: Alignment.center,
                            child: Text('Classic',style: headTxtStyleW,)),

                        GestureDetector(
                          onTap: (){},
                          child: Image.asset('assets/images/upload.png',
                            height: 100,
                            fit: BoxFit.fitHeight, ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Size',style: TxtStyleBox),
                            CustomBox(
                                label: '35x45mm'),
                          ],
                        ),
                        SizedBox(height: 1.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Copies',style: TxtStyleBox),
                            CustomBox(
                                label: '4'),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Type',style: TxtStyleBox),
                            CustomBox(
                                label: 'Color'),
                          ],
                        ),

                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Text('   ₹ 40.00/-  ',style: TxtStyleP),
                            Text('(Incl Taxes)',style: TxtStyleBox),
                            SizedBox(width: 2.w,),
                            GestureDetector(
                              onTap: (){},
                              child: Image.asset('assets/images/addcart.png',
                                  width: 25.w,
                                  height: 4.h,fit: BoxFit.fill),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  GestureDetector(
                    onTap: (){
                      Get.offAll(()=> HomeIndex());
                    },
                    child: Image.asset('assets/images/addn.png',
                        width: 40.w,
                        height: 5.h,fit: BoxFit.fill),
                  ),
                  SizedBox(height: 5.h,),
                ],
              ),
            )),
      ),);
  }
}
