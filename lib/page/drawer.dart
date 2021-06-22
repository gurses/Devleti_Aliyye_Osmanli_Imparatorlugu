import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  String text =
      'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
  String subject = 'Download the app.';
  List<String> imagePaths = [];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.star,
              text: 'rate'.tr,
              onTap: () {
                _launchGooglePlay();
              }),
          _createDrawerItem(
              icon: Icons.share,
              text: 'share'.tr,
              onTap: () {
                _onShare(context);
              }),
          _createDrawerItem(
              icon: Icons.contact_mail,
              text: 'contact'.tr,
              onTap: () {
                _launchMail();
              }),
          Divider(),
          ListTile(
            title: Text('Version 0.0.1'),
            onTap: () {},
          ),
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

  _launchMail() async {
    const url =
        'mailto:gursesarmuttcu@gmail.com?subject=News&body=New%20plugin';
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

  _launchFacebook() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.red],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text(
                "Devlet-i ‘Aliyye",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              )),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
