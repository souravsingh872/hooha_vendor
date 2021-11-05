import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AllOrdersContainer extends StatefulWidget {
  const AllOrdersContainer({Key? key}) : super(key: key);

  @override
  _AllOrdersContainerState createState() => _AllOrdersContainerState();
}

class _AllOrdersContainerState extends State<AllOrdersContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
                children: [
                  Container(
                    width: 100.h,
                    height: 8.h,
                    margin: EdgeInsets.fromLTRB(5, 10,5, 0),
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey,width: 1)
                    // ),
                    child: Row(
                      children: [
                        Expanded(child: Text("Order no",style: TextStyle(fontSize: 11.sp,color: Colors.black,),textAlign: TextAlign.center,)),
                        Expanded(
                            child: Text("Item",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,)),
                        Expanded(child: Text("Total",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,)),
                        Expanded(child: Text("Order Status",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,)),
                        Expanded(child: Text("User Phone",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,)),
                        Expanded(child: Text("View",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,)),
                      ],
                    ),
                  ),
                  Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,)),
                  Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                          itemBuilder: (BuildContext context,index){
                    return Column(
                      children: [
                      Container(
                      width: 100.h,
                      height: 8.h,
                      margin: EdgeInsets.fromLTRB(10, 0,5, 0),
                      child: Row(
                        children: [
                          Expanded(
                              flex:1,
                              child: Text("5",style: TextStyle(fontSize: 10.sp,color: Colors.black,),)),
                          Expanded(
                              flex: 2,
                              child: Text("5kg gullab Jammun",style: TextStyle(fontSize: 10.sp,color: Colors.black),)),
                          Expanded( flex:1,child: Text("870",style: TextStyle(fontSize: 10.sp,color: Colors.black))),
                          Expanded( flex:1,child: Container(height: 3.h,width: 10.w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(0.5.w)
                            ),
                            child: Center(
                              child: Text("Cancel",style: TextStyle(fontSize: 8.sp,color: Colors.white),),
                            ),
                          )),
                          SizedBox(width: 1.w,),
                          Expanded(
                              flex: 2,
                              child: Text("9996099643",style: TextStyle(fontSize: 10.sp,color: Colors.black),textAlign: TextAlign.center,)),
                          Expanded( flex:1,child: Container(height: 3.h,width: 7.w,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(0.5.w)
                            ),
                            child: Center(
                              child: Icon(Icons.remove_red_eye_outlined,size: 3.w,color: Colors.white,),
                            ),
                          )),
                        ],
                      ),
                    ),
                        Container(
                            height: 1.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black12,)),
                      ],
                    );



                  }))


                ],

          ),
    );
  }
}
