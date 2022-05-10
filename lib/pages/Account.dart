import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body: _buildBody,
    );

  }
  get _buildAppbar =>AppBar(
    backgroundColor: Colors.blueGrey,
    title: Text("Account"),



  );
  get _buildBody=>Container(
    child: ListView(
      children: [
        _buildBoxAccount(),
        SizedBox(height: 20,),
        _box("User Name"),
        SizedBox(height: 2,),
        _box("Password"),
        SizedBox(height: 2,),
        _box("Email"),
        SizedBox(height: 2,),
        _box("Address"),
        SizedBox(height: 2,),
      ],
    ),
  );
  _buildBoxAccount() => Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 400,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 3
              ),
            ]
          ),
          child: Icon(Icons.person,size: 90,),
        ),
        SizedBox(height: 20,),
        Text("Account Name",style: TextStyle(fontSize: 30,fontFamily: "f1",color: Colors.white),)
      ],
    ),

      );
  _box(String text){
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[200],
          boxShadow:[
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1
            )
          ]
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "f1"),)),
      ),
    );
  }
}
