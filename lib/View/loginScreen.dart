import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/loginScreenBackground.png",
              height: 100.h,width:100.w,fit: BoxFit.fill,),
            ListView(
              children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to",style: TextStyle(fontSize:25.sp,fontWeight: FontWeight.bold,
                      color:Colors.black),),
                  Text("Hoo-Ha",style: TextStyle(fontSize:25.sp,fontWeight: FontWeight.bold,
                      color:Color(0xffFFA012)),)
                ],
              ),
              Text("Your favourite foods delivered \n fast at your door.",style: TextStyle(
                  fontSize: 15.sp,
                  color: Color(0xff575757)
              ),),
                ],
              ),
            ),
               SizedBox(height:10.h,),

               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
               Text("Login",style: TextStyle(
                 fontSize: 20.sp,
                 fontWeight: FontWeight.bold,
                 color: Color(0xffFFA012),
               ),textAlign: TextAlign.center,),
               Container(
                 height: 8.h,
                 width:100.w,
                 margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                 decoration: BoxDecoration(
                   border: Border.all(color:  Color(0xffFFA012),width: 1),
                   borderRadius: BorderRadius.circular(50.0),),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(width: 20,),
                     Icon(Icons.email_outlined,color: Colors.black,size: 3.h,),
                     SizedBox(width: 20,),
                     Expanded(
                       child: TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: 'enter your email',
                           hintStyle: TextStyle(
                             fontSize: 10.sp,
                             color: Colors.grey
                           )
                         ),
                       ),
                     )

                   ],
                 ),
               ),
               Container(
                 height: 8.h,
                 width: 100.w,
                 margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                 decoration: BoxDecoration(
                   border: Border.all(color:  Color(0xffFFA012),width: 1),
                   borderRadius: BorderRadius.circular(50.0),),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(width: 20,),
                     Icon(Icons.lock_outline,color: Colors.black,size: 3.h,),
                     SizedBox(width: 20,),
                     Expanded(
                       child: TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: 'enter your password',
                             hintStyle: TextStyle(
                                 fontSize: 10.sp,
                                 color: Colors.grey
                             )
                         ),
                       ),
                     )

                   ],
                 ),
               ),

               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomeScreen()));
                 },
                 child: Container(
                   margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                   child: CircleAvatar(
                       radius: 8.w,
                       backgroundColor: Color(0xffFFA012),
                       child: Center(
                         child: Icon(Icons.arrow_forward,color: Colors.white,size: 3.h,),
                       )
                   ),
                 ),
               )

                 ],
               ),



              ],
            )
          ],
        ),
      )
    );
  }
}
