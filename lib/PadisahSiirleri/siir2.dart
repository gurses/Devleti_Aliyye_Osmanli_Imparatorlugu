import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:get/get.dart';
//import 'package:facebook_audience_network/facebook_audience_network.dart';

void main() => runApp(Siir2());

class Siir2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Siir2> {
  String text =
      'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
  String subject = 'Download the app.';
  List<String> imagePaths = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 233, 242, 1),
      appBar: AppBar(
          leading: BackButton(color: Colors.black),
          title: Text('mushrooms'.tr,
              style: TextStyle(
                  fontFamily: 'Comfortaa',
                  color: Colors.black,
                  fontWeight: FontWeight.w700)),
          backgroundColor: Colors.orange,
          centerTitle: true),
      //backgroundColor: Color.fromRGBO(61, 62, 61, 1)),
      body: Container(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          ClipPath(
            clipper: CurvedBottomClipper(),
            child: Container(
              margin: EdgeInsets.only(top: 0),
              color: Colors.orange,
              height: 300.0,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Image(
                    image: AssetImage(
                      'assets/mushrooms.png',
                    ),
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 50),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 10),
                  child: Image(
                    image: AssetImage(
                      'assets/padisahlar/p7.png',
                    ),
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 0),
                  child: SelectableText(
                    "siirpadisah2".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 65,
                  endIndent: 65,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2".tr,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                 Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2iki".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                 Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2üc".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                 Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2dört".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                 Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2bes".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                   Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2alti".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                   Divider(
                  color: Colors.black,
                  thickness: 1.6,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 5),
                  child: SelectableText(
                    "siir2yedi".tr,
                    style: TextStyle( 
                        fontFamily: 'Comfortaa',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // gölgenin pozisyonunu değiştir
                ),
              ],
            ),
          ),
        ]),
      )),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.orange,
        children: [
          SpeedDialChild(
              child: Icon(Icons.contact_mail),
              label: "contact".tr,
              backgroundColor: Colors.orange,
              onTap: () {
                _launchMail();
              }),
          SpeedDialChild(
              child: Icon(Icons.star_rate),
              label: "rate".tr,
              backgroundColor: Colors.orange,
              onTap: () => _launchGooglePlay()),
          SpeedDialChild(
              child: Icon(Icons.share),
              label: "share".tr,
              backgroundColor: Colors.orange,
              onTap: () => {
                   
                    _onShare(context),
                  }),
        ],
      ),
    );
  }

  _onShare(BuildContext context) async {
    final RenderBox box = context.findRenderObject() as RenderBox;

    if (imagePaths.isNotEmpty) {
      await Share.shareFiles(imagePaths,
          text: text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    } else {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }
  }
}

_launchMail() async {
  const url = 'mailto:gursesarmuttcu@gmail.com?subject=News&body=New%20plugin';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGooglePlay() async {
  const url =
      'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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
