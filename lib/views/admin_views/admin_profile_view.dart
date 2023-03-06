import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posadmin/constant/app_color.dart';
import 'package:posadmin/views/home_views/home_screen.dart';

class AdminProfileScreen extends StatefulWidget {
  const AdminProfileScreen({super.key});

  @override
  State<AdminProfileScreen> createState() => _AdminProfileScreenState();
}

class _AdminProfileScreenState extends State<AdminProfileScreen> {
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
        title:const Text("Admin Profile",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children:const [
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Admin user name',
                    helperStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Id',
                    helperStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    helperStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm Password',
                    helperStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey)
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 58,
                width: 256,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child:const Center(
                  child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
          
        ],
      ),
    );
  }
}