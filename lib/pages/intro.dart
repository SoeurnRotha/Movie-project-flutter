import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_movie/pages/Home_page.dart';
class IntroPages extends StatefulWidget {
  const IntroPages({Key? key}) : super(key: key);

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  void initState() {
   Timer(Duration(seconds: 5), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }
  get _buildBody=> Container(
    alignment: Alignment.center,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius : BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("images/home/logo.png"),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(height: 20,),
        CircularProgressIndicator(
          backgroundColor: Colors.blue[300],
          valueColor: AlwaysStoppedAnimation(Colors.red),
        )
      ],
    ),
  );
}
