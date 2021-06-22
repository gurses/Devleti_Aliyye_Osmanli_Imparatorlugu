import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'detail.dart';

void main() => runApp(Selcuklu());

class Selcuklu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harry Magic Spells',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Harry Magic Spells'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MySuperHero {
  final String img;
  final String title;
  final String body;

  MySuperHero(this.img, this.title, this.body);
}

class _MyHomePageState extends State<MyHomePage> {

  List<MySuperHero> items = new List<MySuperHero>();

  _MyHomePageState() {
    items.add(new MySuperHero("assets/padisahlar/p1.png", "pa1".tr,
        "p1".tr));
    items.add(new MySuperHero("assets/padisahlar/p2.png", "pa2".tr,
        "p2".tr));
    items.add(new MySuperHero("assets/padisahlar/p3.png", "pa3".tr,
        "p3".tr));
    items.add(new MySuperHero("assets/padisahlar/p4.png", "pa4".tr,
        "p4".tr));
    items.add(new MySuperHero("assets/padisahlar/p5.png", "pa5".tr,
        "p5".tr));
    items.add(new MySuperHero("assets/padisahlar/p6.png", "pa6".tr,
        "p6".tr));
    items.add(new MySuperHero("assets/padisahlar/p7.png", "pa7".tr,
        "p7".tr));
    items.add(new MySuperHero("assets/padisahlar/p8.png", "pa8".tr,
        "p8".tr));
    items.add(new MySuperHero("assets/padisahlar/p9.png", "pa9".tr,
        "p9".tr));
    items.add(new MySuperHero("assets/padisahlar/p10.png", "pa10".tr,
        "p10".tr));
    items.add(new MySuperHero("assets/padisahlar/p11.png", "pa11".tr,
        "p11".tr));
    items.add(new MySuperHero("assets/padisahlar/p12.png", "pa12".tr,
        "p12".tr));
    items.add(new MySuperHero("assets/padisahlar/p13.png", "pa13".tr,
        "p13".tr));
    items.add(new MySuperHero("assets/padisahlar/p14.png", "pa14".tr,
        "p14".tr));
    items.add(new MySuperHero("assets/padisahlar/p15.png", "pa15".tr,
        "p15".tr));
    items.add(new MySuperHero("assets/padisahlar/p16.png", "pa16".tr,
        "p16".tr));
    items.add(new MySuperHero("assets/padisahlar/p17.png", "pa17".tr,
        "p17".tr));
    items.add(new MySuperHero("assets/padisahlar/p18.png", "pa18".tr,
        "p18".tr));
    items.add(new MySuperHero("assets/padisahlar/p19.png", "pa19".tr,
        "p19".tr));
    items.add(new MySuperHero("assets/padisahlar/p20.png", "pa20".tr,
        "p20".tr));
    items.add(new MySuperHero("assets/padisahlar/p21.png", "pa21".tr,
        "p21".tr));
    items.add(new MySuperHero("assets/padisahlar/p22.png", "pa22".tr,
        "p22".tr));
    items.add(new MySuperHero("assets/padisahlar/p23.png", "pa23".tr,
        "p23".tr));
    items.add(new MySuperHero("assets/padisahlar/p24.png", "pa24".tr,
        "p24".tr));
    items.add(new MySuperHero("assets/padisahlar/p25.png", "pa25".tr,
        "p25".tr));
    items.add(new MySuperHero("assets/padisahlar/p26.png", "pa26".tr,
        "p26".tr));
    items.add(new MySuperHero("assets/padisahlar/p27.png", "pa27".tr,
        "p27".tr));
    items.add(new MySuperHero("assets/padisahlar/p28.png", "pa28".tr,
        "p28".tr));
    items.add(new MySuperHero("assets/padisahlar/p29.png", "pa29".tr,
        "p29".tr));
    items.add(new MySuperHero("assets/padisahlar/p30.png", "pa30".tr,
        "p30".tr));
    items.add(new MySuperHero("assets/padisahlar/p31.png", "pa31".tr,
        "p31".tr));
    items.add(new MySuperHero("assets/padisahlar/p32.png", "pa32".tr,
        "p32".tr));
    items.add(new MySuperHero("assets/padisahlar/p33.png", "pa33".tr,
        "p33".tr));
    items.add(new MySuperHero("assets/padisahlar/p34.png", "pa34".tr,
        "p34".tr));
    items.add(new MySuperHero("assets/padisahlar/p35.png", "pa35".tr,
        "p35".tr));
    items.add(new MySuperHero("assets/padisahlar/p36.png", "pa36".tr,
        "p36".tr));
  }

  Widget SuperHeroCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {
       
        final snackBar = SnackBar(content: Text("Tap"));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyDetailPage(items[index])));
      },
      
      child: Card(
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(36.0),
    
  ),
          margin: EdgeInsets.all(8),
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Hero(
                      tag: items[index],
                      child: Image.asset(items[index].img,width: 80,height: 80,),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      items[index].title,
                     style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios,
                color: Colors.black,),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 233, 242, 1),
      
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => SuperHeroCell(context, index),
        
      ),
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 3 / 5;

    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}