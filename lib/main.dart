import 'package:dopy_app/modules/onboard/welcome_indexx.dart';
import 'package:dopy_app/modules/onboard/welcome_screen.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/background_container.dart';
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
        home:  WelcomeIndex()
    );
    }));
  }
}

