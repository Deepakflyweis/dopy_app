import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:flutter/cupertino.dart';

class CustomBox extends StatelessWidget {

  CustomBox({Key? key,
    required this.label,}) : super(key: key);

  String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
                width: 45.w,
                height: 6.h,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10,),
                decoration: BoxDecoration(
                border: Border.all(width: 1,color: whiteclr),
            //     gradient: const LinearGradient(
            //     colors: [
            //       Color(0xF7F8EFFF),
            //       Color(0xFFFFFFFF),
            //     ]
            // ),
            color: Colors.white70,
            boxShadow: const [
            BoxShadow(
            color: Colors.white,
            offset: Offset(1.0, 1), ),],
            borderRadius: BorderRadius.circular(15.0),
            ),
            child: TextFormField(
            decoration: InputDecoration(
            constraints: BoxConstraints(maxWidth: 100.w),
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_down,color: pinkclr,size: 30),
            ),
            border: InputBorder.none,
            hintText: label,
              hintStyle:  const TextStyle(fontWeight: FontWeight.normal,fontSize: 16.0,
                color: blckclr,
                fontFamily: 'Poppins',)


      ),
      )
      ),
    );
    }
}
