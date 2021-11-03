import 'package:flutter/material.dart';
import 'package:hooha_vendor/View/activityContainer.dart';
import 'package:hooha_vendor/View/inKitchenContainer.dart';
import 'package:hooha_vendor/View/readyToPickConatiner.dart';
import 'package:sizer/sizer.dart';

class OrdersContainer extends StatefulWidget {
  const OrdersContainer({Key? key}) : super(key: key);

  @override
  _OrdersContainerState createState() => _OrdersContainerState();
}

class _OrdersContainerState extends State<OrdersContainer> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ScrollController? scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 1.h,),
          Container(
            width: double.infinity,
            height:  8.h,
            margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
            decoration: BoxDecoration(
                color: Color(0xffFFA012),
                borderRadius: BorderRadius.circular(2.h)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 0.5.w),
                    insets: EdgeInsets.symmetric(horizontal: 5.w)),
                // <-- Your TabBar
                tabs: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                      "Activity",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 9.sp,)),
                        SizedBox(width: 1.w,),
                        Text("(1)", textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 9.sp,color: Colors.red))
                      ],

                    ),
                    height: 8.h,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "In Kitchen",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 9.sp, ),
                        ),
                        SizedBox(width: 1.w,),
                        Text("(1)", textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 9.sp,color: Colors.red))
                      ],
                    ),
                    height: 8.h,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Ready to \nPick",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 9.sp, ),),
                        SizedBox(width: 1.w,),
                        Text("(1)", textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 9.sp,color: Colors.red))

                      ],
                    ),

                    height: 8.h,
                  ),
                ],
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10,),

          Expanded(
            child: TabBarView( // <-- Your TabBarView
              controller: _tabController,
              children: [
                ActivityContainer(),
              InKitchenContainer(),
                ReadyToPick(),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
