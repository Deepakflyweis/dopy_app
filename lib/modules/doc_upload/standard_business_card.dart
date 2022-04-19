
import 'package:dopy_app/modules/home/home_index.dart';
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:dopy_app/utils/utility/container_box.dart';
import 'package:dopy_app/utils/utility/utility_appbar.dart';
import 'package:dopy_app/widgets/background_stack.dart';
import 'package:flutter/material.dart';

class StandardBusinessCard extends StatefulWidget {
  const StandardBusinessCard({Key? key}) : super(key: key);

  @override
  State<StandardBusinessCard> createState() => _StandardBusinessCardState();
}

class _StandardBusinessCardState extends State<StandardBusinessCard> {
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
                      height: 10.h,
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
                            child: Text('Standard Business Card',style: headTxtStyleW,)),

                        GestureDetector(
                          onTap: (){},
                          child: Image.asset('assets/images/upload.png',
                            height: 80, fit: BoxFit.fitHeight, ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Size',style: TxtStyleBox),
                            CustomBox(
                                label: '3.5x2 Inch'),
                          ],
                        ),
                        SizedBox(height: 1.h,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Sides',style: TxtStyleBox),
                            CustomBox(
                                label: 'Front & Back'),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Orientation',style: TxtStyleBox),
                            CustomBox(
                                label: 'Landscape'),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('   Qty',style: TxtStyleBox),
                            CustomBox(
                                label: '200'),
                          ],
                        ),

                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Text('   ₹ 400.00/-  ',style: TxtStyleP),
                            Text('(Incl Taxes)',style: TxtStyleBox),
                            SizedBox(width: 2.w,),
                            GestureDetector(
                              onTap: (){},
                              child: Image.asset('assets/images/addcart.png',
                                  width: 25.w,
                                  height: 3.h,fit: BoxFit.fill),
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
