import 'package:padisahlar_app/main.dart';
import 'package:padisahlar_app/page/padisahlar.dart';
import 'package:padisahlar_app/page/drawer.dart';
import 'package:padisahlar_app/page/galeri.dart';
import 'package:padisahlar_app/main.dart';
import 'settings.dart';
import 'siirler.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:padisahlar_app/sarki.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


typedef void OnError(Exception exception);

class SimpleAppBarPage extends StatefulWidget {
  
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
  
  
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String text =
      'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
  String subject = 'Download the app.';
  List<String> imagePaths = [];
  var _firstPress = true ;

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


Widget _bannerAd = SizedBox(width: 0, height: 0);


void onPlayaudio() async{
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  await assetsAudioPlayer.open(Audio("assets/music.mp3"));

}

  @override
  Widget build(BuildContext context) => DefaultTabController(

    
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('padisahlar'.tr),
            //centerTitle: true,

            actions: [
              IconButton(
                icon: Icon(Icons.music_note),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sarki()),
                );
                       /* if(_firstPress){
                          _firstPress = false ;
                           onPlayaudio();
                          }*/
                        }, // 
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  _onShare(context);
                },
              )
            ],

            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.red
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              controller: _tabController,
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/Icons/icon_home.png",
                      ),
                      //color: Colors.purple,
                    ),
                    text: 'manubaslik'.tr),
                Tab(icon: ImageIcon(
                      AssetImage(
                        "assets/Icons/icon_info.png",
                      ),
                      //color: Colors.purple,
                    ), text: 'siir'.tr),
                Tab(icon: ImageIcon(
                      AssetImage(
                        "assets/Icons/icon_mushrooms.png",
                      ),
                      //color: Colors.purple,
                    ),text: 'gallery'.tr),
                Tab(icon: Icon(Icons.settings), text: 'settings'.tr),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          drawer: AppDrawer(),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Selcuklu(),
              Home(),
              Galeri(),
              Settings(),
          
            ],
          ),
        ),
      );
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

  _launchGooglePlay() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.padisahlar_app_1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class Sarki extends StatefulWidget {
  @override
  _SarkiState createState() => _SarkiState();
}

class _SarkiState extends State<Sarki> {
  bool _play = false;
 @override
Widget build(BuildContext context) {
  return AudioWidget.assets(
     path: "assets/music.mp3",
     play: _play,
     child: RaisedButton(
           child: Text(
               _play ? "pause" : "play",
           ),
           onPressed: () {
               setState(() {
                 _play = !_play;
               });
           }
      ),
      onReadyToPlay: (duration) {
          //onReadyToPlay
      },
      onPositionChanged: (current, duration) {
          //onPositionChanged
      },
  );
}
}
