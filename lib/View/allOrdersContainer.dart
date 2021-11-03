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
      body:  ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(

                          )
                        ],
                      )

                    ],
                  )

                ],

          ),
    );
  }
}
