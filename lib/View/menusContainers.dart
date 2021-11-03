import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class MenusContainer extends StatefulWidget {
  const MenusContainer({Key? key}) : super(key: key);

  @override
  _MenusContainerState createState() => _MenusContainerState();
}

class _MenusContainerState extends State<MenusContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 2.h,),
          Container(
            height: 8.h,
            width: 100.w,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.h),
              border: Border.all(width: 1.0,color: Colors.grey)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Add New Categories", style: TextStyle(fontSize: 12.sp,color: Colors.black))),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: GestureDetector(
                      onTap: (){
                        openCategoryDialogue();
                      },
                        child: Icon(Icons.add,size: 4.h,color: Colors.black,)))
              ],
            ),
          ),
          Expanded(child:ListView.builder(
            itemCount: 4,
              itemBuilder: (BuildContext context,index){
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20,20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Cake", style: TextStyle(fontSize: 11.sp,color: Colors.black)),
                      GestureDetector(
                        onTap: (){
                          openCategoryDialogue();
                        },
                          child: Icon(Icons.edit_outlined,size: 3.h,color: Colors.black))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                height: 1.0,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.black12,))
              ],
            );
          }))
        ],
      ),
    );
  }

   openCategoryDialogue() {
    return showDialog(context: context,
        barrierColor: Color(0xff14262e).withOpacity(0.77),
    builder: (BuildContext context){
    return Dialog(
    shape:  RoundedRectangleBorder(
    borderRadius:
    BorderRadius.circular(15.0)),
      child: Container(
        height: 55.h,
        width: 100.w,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(5.h)
        ),
        child: SingleChildScrollView(
         child: SizedBox(
           height: 55.h,
           width: 100.w,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0,0),
                          child: Text("Add Category",style: TextStyle(fontSize: 12.sp,color: Colors.black))),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0,0),
                    height: 1.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,)),

                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0,0),
                          child:Text("Category Name",style: TextStyle(fontSize: 12.sp,color: Colors.black))
                      ),
                      Container(
                        height: 6.h,
                        width: 100.w,
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                            border: Border.all(width: 1.0,color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Category Name',
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0,0),
                          child:Text("Descirption",style: TextStyle(fontSize: 12.sp,color: Colors.black))
                      ),
                      Container(
                        height: 20.h,
                        width: 100.w,
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                            border: Border.all(width: 1.0,color: Colors.grey)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Discription..',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 1.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12,)),
                Expanded(
                  flex: 1,
                  child:   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 4.h,width: 25.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(1.w)
                          ),
                          child: Center(
                            child: Text("Save",style: TextStyle(fontSize: 10.sp,color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 1.w,),
                        Container(height: 4.h,width: 25.w,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(0.5.w)
                          ),
                          child: Center(
                            child: Text("Cancel",style: TextStyle(fontSize: 10.sp,color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 20,)
                      ],
                    ),
                  ),)
              ],
            ),




         )
        ),
      ),
    );
      });
  }
}
