import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InKitchenContainer extends StatefulWidget {
  const InKitchenContainer({Key? key}) : super(key: key);

  @override
  _InKitchenContainerState createState() => _InKitchenContainerState();
}

class _InKitchenContainerState extends State<InKitchenContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 4,
          itemBuilder:(BuildContext context,index){
            return Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(width: 1.0,color: Colors.grey)
              ),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 1.w,),
                            Row(
                              children: [
                                Text("ORDER ",style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                                Text("#109",style: TextStyle(fontSize: 10.sp,color: Colors.black),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("ORDER-DATE-",style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                                SizedBox(width: 1.w,),
                                Text("Oct-10-2020,\n10:47 PM",style: TextStyle(fontSize: 10.sp,color: Colors.black),)
                              ],
                            ),
                            SizedBox(width: 1.w,),
                          ],
                        ),
                      )),
                  Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,)),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 1.w,),
                            Row(
                              children: [
                                Image.asset("assets/images/hoohaLogo.png",width: 20.w,height: 8.h,fit: BoxFit.fill,),
                                SizedBox(width: 1.w,),
                                Text("Kajju Burfi[1kg]*1 ",style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                              ],
                            ),

                            Text("Payment-Online\n(Stripe)",style: TextStyle(fontSize: 10.sp,color: Colors.black),),


                            SizedBox(width: 1.w,),
                          ],
                        ),
                      )),
                  Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,)),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 1.w,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Order Price - 850 Rs",style: TextStyle(fontSize: 10.sp,color: Colors.black),),
                                Text("Contect User-9999999999",style: TextStyle(fontSize: 10.sp,color: Colors.black),)
                              ],
                            ),
                            Container(height: 4.h,width: 15.w,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(1.w)
                              ),
                              child: Center(
                                child: Text("Ready",style: TextStyle(fontSize: 7.sp,color: Colors.white),),
                              ),
                            ),
                            SizedBox(width: 1.w,),
                          ],
                        ),
                      )),


                ],
              ),

            );

          }),
    );
  }
}
