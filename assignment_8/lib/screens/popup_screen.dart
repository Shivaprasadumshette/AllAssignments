// ignore_for_file: prefer_const_constructors

import 'package:assignment_8/helper/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widget/my_menu_item.dart';

final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

class PopUpScreen extends StatelessWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Pop-Up Menu",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PopupMenuButton(
              key: _key,
              onSelected: (int idx) async {
                // print(colors[idx]);
                Fluttertoast.showToast(
                  msg: "You clicked: ${colors[idx].toString()}",
                  backgroundColor: color[idx],
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Text(
                  "Click Here",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "  ABCD",
                      color: Colors.white,
                    ),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "   WXYZ",
                      color: Colors.white,
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: MyMenuItem(
                      name: "   12345",
                      color: Colors.white,
                    ),
                    value: 2,
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
