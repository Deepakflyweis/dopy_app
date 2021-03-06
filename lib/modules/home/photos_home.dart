import 'package:dopy_app/modules/passport_classic_photo/classic_photo.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/index_cardview.dart';
import 'package:flutter/material.dart';

class PhotosHome extends StatefulWidget {
  const PhotosHome({Key? key}) : super(key: key);

  @override
  State<PhotosHome> createState() => _PhotosHomeState();
}

class _PhotosHomeState extends State<PhotosHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              // IndexCardView())
              itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Get.to(()=> ClassicPhoto());
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
