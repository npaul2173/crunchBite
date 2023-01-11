import 'package:flutter/material.dart';

class CrunchyHomeScreen extends StatefulWidget {
  const CrunchyHomeScreen({super.key});

  @override
  State<CrunchyHomeScreen> createState() => CrunchyHomeScreenState();
}

class CrunchyHomeScreenState extends State<CrunchyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //    title: const Text('owo'),
      // ),
      body: Center(
        child: Text('Crunchy home',style: TextStyle(fontSize:20),),
      ),);
  }
}