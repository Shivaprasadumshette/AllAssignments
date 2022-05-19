// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
class InfoScreen extends StatefulWidget {
  const InfoScreen({
    Key? key,
    required this.name,
    required this.email,
    required this.prn,
    required this.isMale,
    required this.isFemale,
  }) : super(key: key);
  final String name, email, prn;
  final int isMale, isFemale;
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}
class _InfoScreenState extends State<InfoScreen> {
  String gender = 'Male';
  @override
  Widget build(BuildContext context) {
    print(widget.isMale);
    print(widget.isFemale);
    if (widget.isMale == 1) {
      setState(() {
        gender = 'Male';
      });
    }
    if (widget.isFemale == 2) {
      setState(() {
        gender = 'Female';
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Details'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, ${widget.name}',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PRN:- ${widget.prn}',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gender:- $gender',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email:- ${widget.email}',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ],
              )
            ],
          ),),),);}}
