import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}
final String name = "The Avengers must stop Thanos, an intergalactic warlord, from getting his hands on all the infinity stones. However, Thanos is prepared to go to any lengths to carry out his insane plan.";
class _Page2State extends State<Page2> {
  int star=5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppbar,
        body: _buildBody,
      ),
    );
  }
  get _buildAppbar => AppBar(
    leading: IconButton(
      icon: Icon(Icons.keyboard_return),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    backgroundColor: Colors.blueGrey,
  );
  get _buildBody=> Container(
    alignment: Alignment.center,
    color: Colors.blueGrey  ,
    child: ListView(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          color: Colors.blueGrey,
          child: _movieImage(),
        ),
        Padding(padding: EdgeInsets.all(10),
          child:Text(("Avengers: Infinity War"),style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),),
        Padding(padding: EdgeInsets.all(10),
          child: Text(" April 27, 2018 (USA)",style: TextStyle(fontFamily: "f1",color: Colors.grey,fontSize: 15),),),
        _AddStar(),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text("About",style: TextStyle(fontSize: 30,fontFamily: "f1",color: Colors.white),),
        ),
        _TextAbout()
      ],
    ),
  );
  _movieImage()=> Container(
    height: 600,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        image: DecorationImage(
            image: AssetImage("images/home/02.jpg"),
            fit: BoxFit.cover
        )
    ),
  );
  _AddStar(){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Wrap(
            children: List.generate(5, (index) => Icon(Icons.star,color: index<star ? Colors.yellowAccent : Colors.grey,size: 15,)),
          ),
          SizedBox(width: 20,),
          Text("(5.0)",style: TextStyle(fontSize: 15,fontFamily: "f3",color: Colors.white),),
        ],
      ),
    );
  }
  _TextAbout(){
    return Padding(
      padding: const EdgeInsets.all(10    ),
      child: Container(
        child: Text(name,style: TextStyle(fontFamily: "f1",fontSize: 15,color: Colors.white),),
      ),
    );
  }
}
