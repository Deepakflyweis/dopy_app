
import 'package:dopy_app/modules/doc_upload/flyer_upload_screen.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/index_cardview.dart';
import 'package:flutter/material.dart';

class FlyerHome extends StatefulWidget {
  const FlyerHome({Key? key}) : super(key: key);

  @override
  State<FlyerHome> createState() => _FlyerHomeState();
}

class _FlyerHomeState extends State<FlyerHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: (){
                      Get.to(()=> FlyerUploadScreen());
                    },
                    child: IndexCardView()
                );

              }

          ),

          // SizedBox(height: 1.h,),
          // GestureDetector(
          //   onTap: (){},
          //   child: Image.asset('assets/images/scanbtn.png',
          //       height: 12.h,
          //       width: 50.w ,
          //       fit: BoxFit.cover
          //   ),
          // ),
          SizedBox(height: 5.h,),
        ],
      ),
    );
  }
}
