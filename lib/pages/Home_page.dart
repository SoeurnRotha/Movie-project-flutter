
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_movie/movie%20anime/anime1.dart';
import 'package:project_movie/movie%20anime/anime2.dart';
import 'package:project_movie/movie%20anime/anime3.dart';
import 'package:project_movie/movie%20anime/anime4.dart';
import 'package:project_movie/movie%20anime/anime5.dart';
import 'package:project_movie/movies%20pages/Page1.dart';
import 'package:project_movie/movies%20pages/Page10.dart';
import 'package:project_movie/movies%20pages/Page11.dart';
import 'package:project_movie/movies%20pages/Page12.dart';

import 'package:project_movie/movies%20pages/Page2.dart';
import 'package:project_movie/movies%20pages/Page3.dart';
import 'package:project_movie/movies%20pages/Page4.dart';
import 'package:project_movie/movies%20pages/Page5.dart';
import 'package:project_movie/movies%20pages/Page6.dart';
import 'package:project_movie/movies%20pages/Page7.dart';
import 'package:project_movie/movies%20pages/Page8.dart';
import 'package:project_movie/movies%20pages/Page9.dart';
import 'package:project_movie/pages/Account.dart';
import 'package:project_movie/pages/ViewAllPage1.dart';
import 'package:project_movie/pages/ViewAllPage2.dart';
import 'package:project_movie/pages/ViewAllPage3.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppbar,
        body: _buildBody,
        drawer: _buildDrawer,
      ),
    );
  }
  get _buildAppbar => AppBar(
    backgroundColor: Colors.blueGrey,
    title: Text("Home"),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: (){

        },
      )
    ],
  );
  get _buildDrawer => Drawer(
    child: Column(
      children: [
        _DrawerHeader(),
        Divider(
          height: 2,
          color: Colors.black,
        ),
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text("Home",style: TextStyle(color: Colors.blue),),
          iconColor: Colors.purple,
          onTap: (){

          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text("Account",style: TextStyle(color: Colors.blue),),
          iconColor: Colors.purple[300],
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Account()));
          },
        ),
        ListTile(
          leading: Icon(Icons.keyboard_return),
          title: Text("Logout",style: TextStyle(color: Colors.blue  ),),
          iconColor: Colors.purple[300],
          onTap: (){

          },
        )

      ],
    ),
  );
  _DrawerHeader() => Container(
    width: double.infinity,
    height: 350,
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      image: DecorationImage(
        image: AssetImage("images/home/logo.png"),
        fit: BoxFit.cover
      )
    ),
  );
  get _buildBody => Container(
    color: Colors.blueGrey,
    alignment: Alignment.center,
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New Releases",style: TextStyle(fontSize: 20 ,color: Colors.white),),
              InkWell
                (child: Text("View all",style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.underline),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAllPage1()));
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        _listView1(),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular movies",style: TextStyle(fontSize: 20,color: Colors.white),),
              InkWell(
                  child: Text("View all",style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.underline),),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllPage2()));
                },

              ),
            ],
          ),
        ),
        _listView2(),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Animetion moives",style: TextStyle(fontSize: 20,color: Colors.white),),
              InkWell(child: Text("View all",style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.underline),),
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewAllPage3()));
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        _listView3()
      ],
    ),
  );
  _listView1(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.blueGrey,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //kom plex dak inkwell pg
            InkWell(
              child: _movie("images/home/01.jpg","Avenger End game"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/02.jpg","Avenger Infinity War"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/03.jpg","Avenger Infinity War"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/04.jpg","Avenger Infinity War"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/011.jpg","Morbuls"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page5()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/013.jpg","Godzilla vs Kong"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page6()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/014.jpeg","Brahmastra"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page7()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/015.jpeg","Avatar"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page8()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/017.jpg","Thor"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page9()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/018.jpg","doctor strange"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page10()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/019.jpeg","X 2022"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page11()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: _movie("images/home/020.jpg","The lost city"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page12()));
              },
            ),

          ],
        ),
      ),
    );
  }
  _listView2(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: CarouselSlider(
          items: [
            InkWell(
              child: _item("images/anime/05.jpg"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> anime1()));
              },
            ),
            InkWell(
              child: _item("images/home/01.jpg"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page1()));
              },
            ),

            InkWell(
              child: _item("images/anime/09.jpg"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> anime3()));
              },
            ),

            InkWell(
              child: _item("images/anime/010.jpg"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> anime5()));
              },
            ),

            InkWell(
              child: _item("images/home/014.jpeg"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page7()));
              },
            ),


          ],
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            aspectRatio: 16/9,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
  _listView3(){
    return Container(
    height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            child: _movie("images/anime/05.jpg","You'r name"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>anime1()));
            },
          ),

          SizedBox(width: 10,),
          InkWell(
            child: _movie("images/anime/06.jpg","A Silent Voice"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>anime2()));
            },
          ),

          SizedBox(width: 10,),
          InkWell(
            child:  _movie("images/anime/09.jpg","Spirited away"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>anime3()));
            },
          ),

          SizedBox(width: 10,),
          InkWell(
            child: _movie("images/anime/08.jpg","Demon slayer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>anime4()));
            },
          ),

          SizedBox(width: 10,),
          InkWell(
            child: _movie("images/anime/010.jpg","Naruto"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>anime5()));
            },
          ),

          SizedBox(width: 10,),
        ],
      ),
    );
  }
  _movie(String img,String movieName){
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(movieName,style: TextStyle(fontSize: 20,color: Colors.white),),
                Wrap(
                  //add star
                )
              ],
            )),
      ),
    );
  }
  _item(String img){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
         fit: BoxFit.cover
         // fit: BoxFit.cover
        )
      ),
    );
  }
}


