import 'package:flutter/material.dart';
class anime1 extends StatefulWidget {
  const anime1({Key? key}) : super(key: key);

  @override
  State<anime1> createState() => _anime1State();
}
final String name = "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person.";
class _anime1State extends State<anime1> {
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
          child:Text(("Your name"),style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),),
        Padding(padding: EdgeInsets.all(10),
          child: Text("August 26, 2016 (Japan)",style: TextStyle(fontFamily: "f1",color: Colors.grey,fontSize: 15),),),
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
            image: AssetImage("images/anime/05.jpg"),
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
