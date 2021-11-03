import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooha_vendor/View/accountingContainer.dart';
import 'package:hooha_vendor/View/allOrdersContainer.dart';
import 'package:hooha_vendor/View/customizationContainer.dart';
import 'package:hooha_vendor/View/menusContainers.dart';
import 'package:hooha_vendor/View/ordersContainer.dart';
import 'package:hooha_vendor/View/requestContainer.dart';
import 'package:hooha_vendor/View/uploadImageContainer.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  String menuName="Orders";
  int indexNumber=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: 100.w,
                color: Colors.white,
                height: 8.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState!.openDrawer();
                    },
                      child: Icon(Icons.menu,size: 4.h,color: Colors.black,)),
                 Text(menuName,style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.bold,
                   color: Colors.black
                 ),),
                  GestureDetector(
                      onTap: (){

                      },
                      child: Icon(Icons.settings,size: 4.h,color: Colors.black,)),
                ],
                ),
              ),
            ),
            Container(
              height: 1.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: replaceScreen(indexNumber),
              ),
            ),
          ],

        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.black,
              height: 100.h,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    color: indexNumber==0?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=0;
                            menuName="Oders";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.border_color,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Orders",style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==1?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=1;
                            menuName="Menus";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.menu_open_outlined,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Menus",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==2?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=2;
                            menuName="Customization";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.fastfood_sharp,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Customization",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==3?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=3;
                            menuName="All Orders";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.border_all_sharp,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("All Orders",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==4?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=4;
                            menuName="Accounting";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.account_balance_wallet_rounded,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Accounting",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==5?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=5;
                            menuName="Request";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.request_page_outlined,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Request",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      )),
                  Container(
                    color: indexNumber==6?Color(0xffFFA012):Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            indexNumber=6;
                            menuName="Upload Images";
                            Navigator.pop(context);
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.cloud_upload_rounded,size: 3.h,color: Colors.grey,),
                            SizedBox(width: 5.w,),
                            Text("Upload Image",style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ), Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ))
                ],
              ),
            )
          ],

        ),
      ),
    );
  }

  replaceScreen(int indexNumber) {
    if(indexNumber==0){
      return OrdersContainer();
    }
    else if(indexNumber==1){
      return MenusContainer();
    }
    else if(indexNumber==2){
      return CustomizationContainer();
    }
    else if (indexNumber==3){
      return AllOrdersContainer();
    }
    else if (indexNumber==4){
      return AccountingContainer();
    }
    else if (indexNumber==5){
      return RequestContainer();
    }
    else if (indexNumber==6){
      return UploadImageContainer();
    }
  }
}
