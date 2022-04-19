
import 'package:dopy_app/modules/doc_upload/flyer_upload_screen.dart';
import 'package:dopy_app/modules/doc_upload/standard_business_card.dart';
import 'package:dopy_app/modules/home/business_card_home.dart';
import 'package:dopy_app/modules/home/documents_home.dart';
import 'package:dopy_app/modules/home/flyer_home.dart';
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
            child: SizedBox(
              height: 100.h,
              // padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                      width: 100.w,
                      height: 15.h,
                      child: Image.asset('assets/images/addss.png', fit: BoxFit.fill,)),

                  SizedBox(height: 1.h,),
                  const Align(
                     alignment: Alignment.centerLeft,
                       child: Text('Categories',
                         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: blckclr),)),

                  SizedBox(height: 2.h,),

                  TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: btnclr,
                      indicatorWeight:  5.0,
                      indicatorSize: TabBarIndicatorSize.tab ,
                      controller: _tabController,
                      tabs: [
                           Tab(
                             icon:  Image.asset("assets/images/phot.png",height: 21,fit: BoxFit.fitHeight),
                              child: AutoSizeText(
                                'Photos',
                                style: TxtStyleN,
                                maxLines: 1,
                              ),
                          ),
                          Tab(
                            icon:  Image.asset("assets/images/doct.png",height: 25,fit: BoxFit.fitHeight),
                            child: AutoSizeText(
                              'Document',
                              style: TxtStyleN,
                              maxLines: 1,
                            ),
                        ),
                         Tab(
                          icon:  Image.asset("assets/images/busst.png",height: 21,fit: BoxFit.fitHeight),
                            child: AutoSizeText(
                              'Business',
                              style: TxtStyleN,
                              maxLines: 1,
                            ),
                            ),

                        Tab(
                          icon:  Image.asset("assets/images/flyt.png",height: 21,fit: BoxFit.fitHeight),
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
                        BusinessCardHome(),
                        FlyerHome(),
                      ],
                      controller: _tabController,
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      openSheet();
                    },
                    child: Image.asset('assets/images/scanbtn.png',
                        height: 12.h,
                        width: 50.w ,
                        fit: BoxFit.cover
                    ),
                  ),
                ],
              ),
            ) ),
      ),
    );
  }

  void openSheet() {
    showModalBottomSheet(
      context: context,
      builder: ((builder) => bottomSheet(context)),
    );
  }

  bottomSheet(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Container(
      height:screenSize.height*0.30 ,
      width: screenSize.width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [

          Wrap(
            children: <Widget>[
               const ListTile(
                title: Text('Select Image From',style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(

                title:  const Text('Camera',style: TextStyle(fontWeight: FontWeight.normal)),
                onTap: () {

                },
              ),
              ListTile(
                  title:   const Text('Gallery',style: TextStyle(fontWeight: FontWeight.normal)),
                  onTap: () {

                  }),

              ListTile(
                title:    const Text('Cancel',style: TextStyle(fontWeight: FontWeight.normal)),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}
