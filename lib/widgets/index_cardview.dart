
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

class IndexCardView extends StatelessWidget {
  const IndexCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 15.h,
        width: 85.w,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0,color: tabclr)
        ),
        child: Row(
          children: [
            SizedBox(
              height: 90.h ,
              width: 25.w,
              child: Image.asset('assets/images/unsplash.png',fit: BoxFit.fill),),
            SizedBox(width: 2.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Classic',style: TxtStyleTitle,),
                Row(
                  children: [
                    Text('High Quality',style: TxtStyleCard,),
                    SizedBox(width: 2.w,),
                    Text('1200 DPI',style: TxtStyleCard,),
                  ],
                ),
                Text('Custom Size',style: TxtStyleCard,),
                Row(
                  children: [
                    Text('Starts from    ',style: TxtStyleCard,),
                    SizedBox(width: 1.w,),
                    Text('₹ 10.00/-',style: TxtStyleTitle,),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){},
                icon: Icon(Icons.share),),
                Container(
                  height: 4.h,
                  width: 20.w,
                   alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: btnclr,
                  ),
                  child: Text('Order',style: TextStyle(color: whiteclr,fontWeight: FontWeight.bold)),

                )
              ],)
          ],
        ),
      ),
    );
  }
}
