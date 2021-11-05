import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccountingContainer extends StatefulWidget {
  const AccountingContainer({Key? key}) : super(key: key);

  @override
  _AccountingContainerState createState() => _AccountingContainerState();
}

class _AccountingContainerState extends State<AccountingContainer> {
  DateTime selectedDate = DateTime.now();
  String updateStartdate="dd-mm-yy";
  String updateEndDate="dd-mm-yy";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          height: 10.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            border: Border.all(width: 1,color: Colors.grey),
            color:  Color(0xfffff)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text("Start Date",style: TextStyle(fontSize: 12.sp,color: Colors.black)),
                  SizedBox(height: 1.h,),
                  Container(
                    height: 4.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.w),
                        border: Border.all(width: 1,color: Colors.grey),
                        color:  Colors.white
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: GestureDetector(
                        onTap: (){
                          startDatePicker();
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${updateStartdate}", style: TextStyle(fontSize: 10.sp, color: Colors.black)),
                            Icon(Icons.calendar_today,size: 2.h,)
                          ],
                        ),
                      ),
                    )
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("end Date",
                      style: TextStyle(fontSize: 12.sp, color: Colors.black)),
                  SizedBox(height: 1.h,),
                  Container(
                      height: 4.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.w),
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: GestureDetector(
                          onTap: (){
                            endDatePicker();
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${updateEndDate}", style: TextStyle(fontSize: 10.sp, color: Colors.black)),
                              Icon(
                                Icons.calendar_today,
                                size: 2.h,
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
              Container(height: 3.h,width: 20.w,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(0.5.w)
                ),
                child: Center(
                  child: Text("Search",style: TextStyle(fontSize: 10.sp,color: Colors.white))
                ),
              )
            ],
          ),
        ),
        Container(
          width: 100.h,
          height: 8.h,
          margin: EdgeInsets.fromLTRB(5, 10,5, 0),
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.grey,width: 1)
          // ),
          child: Row(
            children: [
              Expanded(child: Text("Sr no",style: TextStyle(fontSize: 11.sp,color: Colors.black,),textAlign: TextAlign.left,)),
              Expanded(
                  child: Text("Grand Total",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.left,)),
              Expanded(child: Text("Admin Amount",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.left,)),
              Expanded(child: Text("Final Amount",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.left,)),
              Expanded(child: Text("Status",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.left,)),
              Expanded(child: Text("select/unselect",style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.left,)),
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
                                flex: 1,
                                child: Text("400",style: TextStyle(fontSize: 10.sp,color: Colors.black),)),
                            Expanded( flex:1,child: Text("30",style: TextStyle(fontSize: 10.sp,color: Colors.black))),
                            Expanded(
                                flex: 1,
                                child: Text("370",style: TextStyle(fontSize: 10.sp,color: Colors.black),textAlign: TextAlign.center,)),
                            Expanded( flex:1,child: Container(height: 3.h,width: 10.w,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(0.5.w)
                              ),
                              child: Center(
                                child: Text("Requsted",style: TextStyle(fontSize: 8.sp,color: Colors.white),),
                              ),
                            )),
                            SizedBox(width: 1.w,),

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
    );
  }

  Future<void> endDatePicker() async {
    DateTime? datepicked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2101));
    if (datepicked != null && datepicked != selectedDate) {
      setState(() {
        selectedDate = datepicked;
        updateEndDate="${selectedDate.month}-${selectedDate.day}-${selectedDate.year}";
      });

    }
  }
  Future<void> startDatePicker() async {
    DateTime? datepicked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2101));
    if (datepicked != null && datepicked != selectedDate) {
      setState(() {
        selectedDate = datepicked;
        updateStartdate="${selectedDate.month}-${selectedDate.day}-${selectedDate.year}";
      });

    }
  }
}
