

import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';

class Utility{
  static actionBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFFFDE6A),
                  Color(0xFFFFDE6A),
                  Color(0xFFE5097F),
                ]),
          )
      ),
      title: Text('Your Location',style: TextStyle(color: blckclr,fontSize: 16)),
      centerTitle: true,
      leading:  Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: InkWell(
            onTap: (){

            },
            child: Container(
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle
              ),
              child: Image.network("https://picsum.photos/250?image=9",fit: BoxFit.fill),
               ),
          ),
      ),
      actions: [
       Padding(
         padding: const EdgeInsets.only(right: 30.0),
         child: IconButton(
            icon: Icon(Icons.keyboard_arrow_down,size: 35,color: blckclr),
            onPressed: () {
            },
          ),
       ),
       IconButton(
            icon: Icon(Icons.search,size: 35,color: blckclr),
            onPressed: () {
            },
          ),

      ],

      // Row(
      //   children: [
      //     InkWell(
      //       onTap: (){
      //
      //       },
      //       child: Container(
      //         width: 50,
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle
      //         ),
      //         child: Image.network("https://picsum.photos/250?image=9",fit: BoxFit.cover),
      //          ),
      //     ),
      //
      //     SizedBox(width: 25.w,),
      //     Text('Your Location',style: TextStyle(color: blckclr,fontSize: 16)),
      //     IconButton(
      //       icon: Icon(Icons.keyboard_arrow_down,size: 35,color: blckclr),
      //       onPressed: () {
      //       },
      //     ),
      //     SizedBox(width: 8.w,),
      //     IconButton(
      //       icon: Icon(Icons.search,size: 35,color: blckclr),
      //       onPressed: () {
      //       },
      //     ),
      //   ],
      // ),


    );
  }
}