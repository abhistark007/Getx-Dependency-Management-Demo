// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_1/screens/detail_screen.dart';
import 'package:getx_dependency_1/service/apiservice.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final apiService=Get.put(ApiService());
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Dependency Management Example"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is Main Screen",style: TextStyle(fontSize: 40),),
              MaterialButton(
                onPressed:(){
                  print(apiService.value);
                  print(apiService.apiToString());
                  Get.to(()=>DetailScreen());
                },
                textColor: Colors.white,
                color: Colors.black,
                child: Text("Go to Detail Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}