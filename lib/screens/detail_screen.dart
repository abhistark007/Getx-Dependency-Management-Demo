// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_1/service/apiservice.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final apiService=Get.find<ApiService>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
        leading: MaterialButton(
          onPressed: (){
          print(apiService.value);
          print(apiService.apiToString());
        },
        child: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}