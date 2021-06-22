import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Carousel Pro',
    home: Galeri(),
  ));
}

class Galeri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <
            Widget>[
          Container(height: 100,),
          Center(
          
           child: SizedBox(
          height: 400,
          width: 350,
          child: Carousel(
            boxFit: BoxFit.cover,
            
            autoplay: true,
            autoplayDuration: Duration(seconds: 4),
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 7.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 10.0,
            moveIndicatorFromBottom: 180.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            borderRadius: true,

            
            images: [             
              ExactAssetImage("assets/galeri/37.jpg"),
              ExactAssetImage("assets/galeri/38.jpg"),
              ExactAssetImage("assets/galeri/39.jpg"),
              ExactAssetImage("assets/galeri/40.png"),
              ExactAssetImage("assets/galeri/41.jpg"),
              ExactAssetImage("assets/galeri/42.jpg"),
              ExactAssetImage("assets/galeri/43.jpg"),
              ExactAssetImage("assets/galeri/44.jpg"),
              ExactAssetImage("assets/galeri/1.jpg"),
              ExactAssetImage("assets/galeri/2.jpeg"),
              ExactAssetImage("assets/galeri/3.jpeg"),
              ExactAssetImage("assets/galeri/4.jpeg"),
              ExactAssetImage("assets/galeri/5.jpg"),
              ExactAssetImage("assets/galeri/6.jpg"),
              ExactAssetImage("assets/galeri/7.jpg"),
              ExactAssetImage("assets/galeri/8.jpeg"),
              ExactAssetImage("assets/galeri/9.jpg"),
              ExactAssetImage("assets/galeri/10.jpg"),
              ExactAssetImage("assets/galeri/11.jpg"),
              ExactAssetImage("assets/galeri/12.jpg"),
              ExactAssetImage("assets/galeri/13.jpg"),
              ExactAssetImage("assets/galeri/14.jpg"),
              ExactAssetImage("assets/galeri/15.jpg"),
              ExactAssetImage("assets/galeri/16.jpg"),
              ExactAssetImage("assets/galeri/17.jpg"),
              ExactAssetImage("assets/galeri/18.jpg"),
              ExactAssetImage("assets/galeri/19.jpg"),
              ExactAssetImage("assets/galeri/20.jpg"),
              ExactAssetImage("assets/galeri/21.jpg"),
              ExactAssetImage("assets/galeri/22.jpg"),
              ExactAssetImage("assets/galeri/23.jpg"),
              ExactAssetImage("assets/galeri/24.jpg"),
              ExactAssetImage("assets/galeri/25.jpg"),
              ExactAssetImage("assets/galeri/26.jpg"),
              ExactAssetImage("assets/galeri/27.jpg"),
              ExactAssetImage("assets/galeri/28.jpg"),
              ExactAssetImage("assets/galeri/29.jpg"),
              ExactAssetImage("assets/galeri/30.jpg"),
              ExactAssetImage("assets/galeri/31.jpg"),
              ExactAssetImage("assets/galeri/32.jpg"),
              ExactAssetImage("assets/galeri/33.jpg"),
              ExactAssetImage("assets/galeri/34.jpg"),
              ExactAssetImage("assets/galeri/35.jpg"),
              ExactAssetImage("assets/galeri/36.jpg"),
              ExactAssetImage("assets/galeri/37.jpg"),
              ExactAssetImage("assets/galeri/38.jpg"),
              ExactAssetImage("assets/galeri/39.jpg"),
              ExactAssetImage("assets/galeri/40.png"),
              ExactAssetImage("assets/galeri/41.jpg"),
              ExactAssetImage("assets/galeri/42.jpg"),
              ExactAssetImage("assets/galeri/43.jpg"),
              ExactAssetImage("assets/galeri/44.jpg"),
            ],
          ),
        ),
    
     ),
    Row(
                        //  Sağdan-Sola Hizalama
                        mainAxisAlignment: MainAxisAlignment.center,
                        //  Yukarıdan-Aşağıya Hizalama
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  Row içerisine eklenen diğer widgetların listesi
                        children: <Widget>[
       Lottie.asset('assets/back.json',height: 80,width: 80),
       Lottie.asset('assets/next.json',height: 80,width: 80)])
     ]))));
  }
}