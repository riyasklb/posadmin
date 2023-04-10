import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/app_color.dart';
import 'package:posadmin/views/home_views/home_screen.dart';

class DaySummaryReportScreen extends StatefulWidget {
  const DaySummaryReportScreen({super.key});

  @override
  State<DaySummaryReportScreen> createState() => _DaySummaryReportScreenState();
}

class _DaySummaryReportScreenState extends State<DaySummaryReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: InkWell(
          onTap: (){
            Get.off(const HomeScreen());
          },
          child:const Icon(Icons.arrow_back_ios)),
        title:const Text("Attendance",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
        actions:const [
           Icon(Icons.mail),
           SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Container(
                  height: 55,
                  width: 177,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:const [
                        Text("01-Jan-2022",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        Icon(Icons.calendar_month),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 177,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:const [
                        Text("01-Jan-2022",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                        Icon(Icons.calendar_month),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  Text("Date",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("Staff Name",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("Service",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("Amount",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
            ),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  Text("27-3-2023",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("Vino",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("Clean Shave",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  Text("\$25",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
            ),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:Colors.white,
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:Colors.white,
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:Colors.white,
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:Colors.white,
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:Colors.white,
          ),
          Container(
            height: 44,
            width: double.infinity,
            color:const Color(0xffF5F5F5),
          ),
        ],
      ),
      
    );
  }
  
}