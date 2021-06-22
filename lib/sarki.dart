import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

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
      
  );
}
}