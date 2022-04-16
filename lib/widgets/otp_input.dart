

import 'package:dopy_app/utils/app_color.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key,
    required this.controller,required this.autoFocus,required this.validator  })
      : super(key: key);

  final bool autoFocus;
  final TextEditingController controller;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: 3.w
      ),
      child: Container(
        height: 5.h,
        width: 9.w,
        decoration:  BoxDecoration(
          border: Border.all(width: 1.8 ,color: blckclr,),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 0.01,
              spreadRadius: 0.01,
              color: Colors.grey.shade200,
            ),
          ],
        ),

        child: TextFormField(
          validator:  validator,
          obscureText: true,
          obscuringCharacter: "*",
          decoration: const InputDecoration(
            counterText: '',
            border: InputBorder.none,
            focusColor: Colors.black,
          ),
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          onChanged: (value) {
            if (value.length ==1){
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}