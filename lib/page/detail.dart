import 'dart:math';

import 'package:flutter/material.dart';
import 'padisahlar.dart';


class MyDetailPage extends StatefulWidget {
  MySuperHero _superHero;

  MyDetailPage(MySuperHero superHero) {
    _superHero = superHero;
  }

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_superHero);
}

class _MyDetailPageState extends State<MyDetailPage> {
  MySuperHero superHero;


  _MyDetailPageState(MySuperHero superHero) {
    this.superHero = superHero;
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
    
          centerTitle: true,
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent, // Colors.white.withOpacity(0.1),
          elevation: 0,
  );
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 233, 242, 1),
             extendBodyBehindAppBar: true,
       appBar: appBar,
      body: ListView(
          
        children: <Widget>[
         
          Hero(
            
            tag: superHero,
            
              child: Image.asset(superHero.img,width: 260,height: 260,),
            
          ),
          Divider(thickness: 2,),
          Card(
            shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(36.0),
  ),
              elevation: 8,
              margin: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(superHero.body, style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              )),
        ],
      )
    );
  }
}
