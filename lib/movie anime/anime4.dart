import 'package:flutter/material.dart';
class anime4 extends StatefulWidget {
  const anime4({Key? key}) : super(key: key);

  @override
  State<anime4> createState() => _anime4State();
}
final String name = "Demon Slayer: Kimetsu no Yaiba is a Japanese manga series written and illustrated by Koyoharu Gotouge. It follows teenage Tanjiro Kamado, who strives to become a demon slayer after his family was slaughtered and his younger sister Nezuko turned into a demon. Wikipedia";
class _anime4State extends State<anime4> {
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
          child:Text(("Demon Slayer: Kimetsu no Yaiba"),style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),),
        Padding(padding: EdgeInsets.all(10),
          child: Text("February 15, 2016 – May 18, 2020",style: TextStyle(fontFamily: "f1",color: Colors.grey,fontSize: 15),),),
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
            image: AssetImage("images/anime/08.jpg"),
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
