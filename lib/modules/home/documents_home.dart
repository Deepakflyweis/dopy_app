
import 'package:dopy_app/modules/doc_upload/xerox_photocopy.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/index_cardview.dart';
import 'package:flutter/material.dart';

class DocumentsHome extends StatefulWidget {
  const DocumentsHome({Key? key}) : super(key: key);

  @override
  State<DocumentsHome> createState() => _DocumentsHomeState();
}

class _DocumentsHomeState extends State<DocumentsHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: (){
                      Get.to(()=> Photocopy());
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
