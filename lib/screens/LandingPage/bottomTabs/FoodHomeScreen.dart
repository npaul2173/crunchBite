import 'package:flutter/material.dart';

class FoodHomeScreen extends StatefulWidget {
  const FoodHomeScreen({super.key});

  @override
  State<FoodHomeScreen> createState() => FoodScreenState();
}

class FoodScreenState extends State<FoodHomeScreen> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      // appBar: AppBar(
      //    title: const Text('owo'),
      // ),
      body: Center(
        child: Text('food home',style: TextStyle(fontSize:20),),
      ),);
  }
}