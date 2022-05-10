import 'package:flutter/material.dart';
class anime2 extends StatefulWidget {
  const anime2({Key? key}) : super(key: key);

  @override
  State<anime2> createState() => _anime2State();
}
final String name = "A story about redemption had never been so endearing! This movie teaches all its viewers a very important lesson, how important it is to listen to the unspoken sometimes. The literal translation of the original Japanese name of the movie is- ‘The form of the voice’. When a differently-abled girl is bullied by her classmates, tormented and distraught, she moves to another school. Years later, one of her bullies regrets his behaviour and sets out to seek forgiveness, and ends up falling in love with her. Will his voice ever reach her? You have to watch the movie to know.";
class _anime2State extends State<anime2> {
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
          child:Text(("A Silent Voice"),style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),),
        Padding(padding: EdgeInsets.all(10),
          child: Text("October 20, 2017 (Japan)",style: TextStyle(fontFamily: "f1",color: Colors.grey,fontSize: 15),),),
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
            image: AssetImage("images/anime/06.jpg"),
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
