import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir1.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir10.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir11.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir2.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir3.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir4.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir5.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir6.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir7.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir8.dart';
import 'package:padisahlar_app/PadisahSiirleri/siir9.dart';
import 'package:padisahlar_app/page/padisahlar.dart';
//import 'package:facebook_audience_network/facebook_audience_network.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(48, 48, 48, 1),
      backgroundColor: Color.fromRGBO(230, 233, 242, 1),
      body: Container(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          ClipPath(
            clipper: CurvedBottomClipper(),
            child: Container(
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.red,
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              height: 300.0,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Image(
                    image: AssetImage(
                      'assets/mushrooms.png',
                    ),
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
         
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir1()),
                );
              },
              leading: Image.asset("assets/padisahlar/p6.png"),
              title: Text("siirpadisah1".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir2()),
                );
              },
              leading: Image.asset("assets/padisahlar/p7.png"),
              title: Text("siirpadisah2".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir3()),
                );
              },
              leading: Image.asset("assets/padisahlar/p8.png"),
              title: Text("siirpadisah3".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir4()),
                );
              },
              leading: Image.asset("assets/padisahlar/p10.png"),
              title: Text("siirpadisah4".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir5()),
                );
              },
              leading: Image.asset("assets/padisahlar/p11.png"),
              title: Text("siirpadisah5".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir6()),
                );
              },
              leading: Image.asset("assets/padisahlar/p12.png"),
              title: Text("siirpadisah6".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir7()),
                );
              },
              leading: Image.asset("assets/padisahlar/p16.png"),
              title: Text("siirpadisah7".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir8()),
                );
              },
              leading: Image.asset("assets/padisahlar/p17.png"),
              title: Text("siirpadisah8".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir9()),
                );
              },
              leading: Image.asset("assets/padisahlar/p23.png"),
              title: Text("siirpadisah9".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir10()),
                );
              },
              leading: Image.asset("assets/padisahlar/p28.png"),
              title: Text("siirpadisah10".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
                    Container(
            child: ListTile(
              onTap: () {
                //_showInterstitialAd();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siir11()),
                );
              },
              leading: Image.asset("assets/padisahlar/p30.png"),
              title: Text("siirpadisah11".tr,
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
           margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: Color.fromRGBO(245, 177, 163, 1),
              borderRadius: new BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), //gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
              
        ]),
      )),
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
