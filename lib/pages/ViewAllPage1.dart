import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
class ViewAllPage1 extends StatefulWidget {
  const ViewAllPage1({Key? key}) : super(key: key);

  @override
  State<ViewAllPage1> createState() => _ViewAllPage1State();
}

class _ViewAllPage1State extends State<ViewAllPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      body:_buildBody,
    );
  }
  get _buildAppbar=>AppBar(
    backgroundColor: Colors.blueGrey,
    title: Text("View all"),
  );
  get _buildBody =>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: ListView(
        children: [
          SizedBox(height: 10,),
          _buildImage1("images/home/01.jpg","Avenger","images/home/02.jpg","Avenger infinity war"),
          SizedBox(height: 10,),
          _buildImage2("images/home/03.jpg","Avenger infinity war","images/home/04.jpg","Avenger infinity war"),
          SizedBox(height: 10,),
          _buildImage3("images/home/011.jpg","Morbius","images/home/013.jpg","Godzila vs. Kong"),
          SizedBox(height: 10,),
          _buildImage4("images/home/014.jpeg","Brahmastra","images/home/015.jpeg","Avatar"),
          SizedBox(height: 10,),
          _buildImage5("images/home/016.jpg","Thor","images/home/017.jpg","Thor"),
          SizedBox(height: 10,),
          _buildImage6("images/home/018.jpg","Doctor Strange","images/home/019.jpeg","X 2022"),
          SizedBox(height: 10,),
          _buildImage7("images/home/020.jpg","The lost city","images/home/02.jpg","Avenger infiniry war"),
        ],
      ),
    ),
  );
  _buildImage1(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page1()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()));
              },
            )
          ],
        ),
      ),
    );
  }
  _buildImage2(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page3()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page4()));
              },
            )
          ],
        ),
      ),
    );
  }
  _buildImage3(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page5()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page6()));
              },
            )
          ],
        ),
      ),
    );
  }
  _buildImage4(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page7()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page8()));
              },
            )
          ],
        ),
      ),
    );
  }
  _buildImage5(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page8()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page9()));
              },
            )
          ],
        ),
      ),
    );
  }
  _buildImage6(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page10()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page11()));
              },
            )
          ],
        ),
      ),
    );
  } // dol 12
  _buildImage7(String img1,String text1,String img2,String text2){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text1,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page12()));
              },
            ),
            SizedBox(width: 10,),
            InkWell(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(text2,style: TextStyle(fontSize: 20,fontFamily: "f1",color: Colors.white),
                    )
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()));
              },
            )
          ],
        ),
      ),
    );
  }



}
