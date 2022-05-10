import 'package:flutter/material.dart';
class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}
final String name = "Godzilla vs. Kong is a 2021 American monster film directed by Adam Wingard. A sequel to Kong: Skull Island (2017) and Godzilla: King of the Monsters (2019), it is the fourth film in Legendary's MonsterVerse, the 36th film in the Godzilla franchise, the 12th film in the King Kong franchise, and the fourth Godzilla film to be completely produced by a Hollywood studio.[b] The film stars Alexander Skarsgård, Millie Bobby Brown, Rebecca Hall, Brian Tyree Henry, Shun Oguri, Eiza González, Julian Dennison, Lance Reddick, Kyle Chandler, and Demián Bichir. In the film, Kong clashes with Godzilla as humans lure the ape into the Hollow Earth to retrieve a power source for a secret weapon to stop Godzilla's mysterious rampages.";
class _Page5State extends State<Page5> {
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
          child:Text(("Godzilla vs. Kong"),style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "f1"),),),
        Padding(padding: EdgeInsets.all(10),
          child: Text(" March 24, 2021 ",style: TextStyle(fontFamily: "f1",color: Colors.grey,fontSize: 15),),),
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
            image: AssetImage("images/home/011.jpg"),
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
