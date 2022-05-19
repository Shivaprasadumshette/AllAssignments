// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/auth/authscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("TO DO APP"),
      ),
      body: AuthScreen(),
    );
  }
}
