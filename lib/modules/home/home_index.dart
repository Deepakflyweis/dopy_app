
import 'package:dopy_app/modules/doc_upload/flyer_upload_screen.dart';
import 'package:dopy_app/modules/doc_upload/standard_business_card.dart';
import 'package:dopy_app/modules/home/documents_home.dart';
import 'package:dopy_app/modules/home/photos_home.dart';
import 'package:dopy_app/utils/app_color.dart';
import 'package:dopy_app/utils/packages_export/essentials.dart';
import 'package:dopy_app/utils/text_style.dart';
import 'package:dopy_app/widgets/background_stack.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    _tabController =   TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                   text: 'Hello, Elon Musk',
                  style: headTxtStyle,
                ),
                const TextSpan(
                   text: '\n What would you like to scan today?',
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: blckclr),
                ),
              ]
            ),
          ),

          leading:  Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: (){

              },
              child: CircleAvatar(
                radius: 15.w,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/images/profile.png'),
              ),
            ),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFFDE6A),
                      Color(0xFFFFFFFF),
                      Color(0xFFE5097F),

                    ]),
              )
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search,size: 30,color: blckclr),
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(Icons.menu,size: 30,color: blckclr),
              onPressed: () {
              },
            ),
          ],
        ),
        body: BackgroundScreen(
            child: Container(
              height: 100.h,
              // padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                      width: 100.w,
                      height: 15.h,
                      child: Image.asset('assets/images/addss.png', fit: BoxFit.fill,)),

                  SizedBox(height: 2.h,),
                  const Align(
                     alignment: Alignment.centerLeft,
                       child: Text('Categories',
                         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: blckclr),)),

                  SizedBox(height: 2.h,),

                  TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: btnclr,
                      indicatorWeight:  5.0,
                      indicatorSize: TabBarIndicatorSize.label ,
                      controller: _tabController,
                      tabs: [
                           Tab(
                              child: AutoSizeText(
                                'Photos',
                                style: TxtStyleN,
                                maxLines: 1,
                              ),
                          ),
                          Tab(
                            child: AutoSizeText(
                              'Document ',
                              style: TxtStyleN,
                              maxLines: 1,
                            ),
                        ),
                        Tab(
                            child: AutoSizeText(
                          'Business Card ',
                          style: TxtStyleN,
                          maxLines: 2,
                        ),),

                        Tab(
                          child: AutoSizeText(
                          'Flyer ',
                          style: TxtStyleN,
                          maxLines: 1,
                        ),
                        ),
                      ]),

                  Expanded(
                    child: TabBarView(
                      children: const [
                        PhotosHome(),
                        DocumentsHome(),
                        StandardBusinessCard(),
                        FlyerUploadScreen(),
                      ],
                      controller: _tabController,
                    ),
                  ),

                ],
              ),
            ) ),
      ),
    );
  }
}
