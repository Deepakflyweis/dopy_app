
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:flutter/cupertino.dart';

class BackGroundImg extends StatelessWidget {
  var child;
    BackGroundImg({Key? key,@required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: child,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/bckgrnd.png"),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}
