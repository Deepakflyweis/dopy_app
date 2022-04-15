
import 'package:dopy_app/modules/onboard/welcome_screen.dart';
import 'package:dopy_app/modules/onboard/welcome_screen2.dart';
import 'package:dopy_app/modules/onboard/welcome_screen3.dart';
import 'package:dopy_app/modules/user/login_screen.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/widgets/background_container.dart';

import 'package:flutter/material.dart';

class WelcomeIndex extends StatefulWidget {
  const WelcomeIndex({Key? key}) : super(key: key);

  @override
  State<WelcomeIndex> createState() => _WelcomeIndexState();
}

class _WelcomeIndexState extends State<WelcomeIndex> {

  PageController controller = PageController();

  final List<Widget> _list = <Widget>[
    const WelcomeScreen(),
    const WelcomeScreen2(),
    const WelcomeScreen3(),

  ];
  int _curr=0;
  @override
  Widget build(BuildContext context) {
    return BackGroundImg(
       child:  Column(
        children: [
          Image.asset('assets/images/wscreen.png',height: 50.h,fit: BoxFit.fitHeight),
          Expanded(
            child: PageView(
                  children:
                  _list,
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  onPageChanged: (num){
                    setState(() {
                      _curr=num;
                    });
                  },
                ),
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _list.length, (index) => buildDot(index, context))),
          GestureDetector(
            onTap: (){
              Get.offAll(()=> LoginScreen());
            },
            child: Image.asset('assets/images/log_sg.png', width: 85.w,fit: BoxFit.fitWidth),
          ),
          SizedBox(height: 2.h,),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      width: 10,
      height: _curr == index ? 12 : 10,
        margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _curr == index ? Color(0xFFE5097F) : Color(0xff979797),
      ),
    );
  }
}
