import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/app_color.dart';
import 'package:posadmin/views/home_views/home_screen.dart';

class PaymentReportScreen extends StatefulWidget {
  const PaymentReportScreen({super.key});

  @override
  State<PaymentReportScreen> createState() => _PaymentReportScreenState();
}

class _PaymentReportScreenState extends State<PaymentReportScreen> {
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
        title:const Text("Payment Report",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              credit(context);
            },
            child:const Icon(Icons.add_a_photo)),
          const SizedBox(width: 10,),
          const Icon(Icons.mail),
          const SizedBox(width: 10,),
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
      bottomNavigationBar: Container(
            height: 75,
            decoration: BoxDecoration(
              color: primaryColor,
             // borderRadius:const BorderRadius.circular()
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Grand Total",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                  InkWell(
                    onTap: (){
                      //Get.to(const PaymentMoadScreen());
                    },
                    child: Container(
                      height: 42,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Center(
                        child: Text("\$ 25",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
  Future<void> credit(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 287,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Select Staff",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 30,),
                   Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color:const Color(0xffD9D9D9),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Vino",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                   ),
                   const SizedBox(height: 15,),
                    Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color:const Color(0xffD9D9D9),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Raj",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                   ),
                   const SizedBox(height: 15,),
                    Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color:const Color(0xffD9D9D9),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Sanjay",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                   ),
                   const SizedBox(height: 15,),
                    Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color:const Color(0xffD9D9D9),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Mano",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                   ),
                   const SizedBox(height: 15,),
                    Row(
                    children: [
                      Container(
                        height: 17,
                        width: 17,
                        color:const Color(0xffD9D9D9),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Ram",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                   ),
                    const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            Container(
                      height: 41,
                      width: 115,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:const Center(
                        child: Text("Cancel",style: TextStyle(color: Colors.black,fontSize: 16),),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        //Get.to(const SuccessFullScreen());
                      },
                      child: Container(
                        height: 41,
                        width: 115,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:const Center(
                          child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 16),),
                        ),
                      ),
                    ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}