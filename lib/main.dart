import 'package:dopy_app/modules/doc_upload/center_pinned_book.dart';
import 'package:dopy_app/modules/doc_upload/flyer_upload_screen.dart';
import 'package:dopy_app/modules/doc_upload/standard_business_card.dart';
import 'package:dopy_app/modules/doc_upload/texture_business_card.dart';
import 'package:dopy_app/modules/home/home_index.dart';
import 'package:dopy_app/modules/passport_classic_photo/passport_photo.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
        home:  HomeIndex()
    );
    }));
  }
}

