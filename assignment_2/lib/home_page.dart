// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final TextEditingController _moneyController = TextEditingController();
  int dollar = 0;

  String rupee = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Android App-2',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                //  image: AssetImage('assets/book.jpg'),
                image: NetworkImage("https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80"),
                height: 450,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  'Please Enter price in dollar:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 68.0),
                child: TextField(
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  controller: _moneyController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: 'Currency converted successfully');
                  FocusManager.instance.primaryFocus?.unfocus();

                  setState(() {
                    dollar = int.parse(_moneyController.text);
                    _moneyController.text = "";
                  }
                  );
                },
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Convert',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  '$dollar Dollar = ${dollar * 75.35} Rupee',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal
      ,
    );
  }
}
