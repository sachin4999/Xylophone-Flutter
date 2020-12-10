import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void sound(String songname) {
    final player = AudioCache();
    player.play('$songname.mp3');
  }

  Expanded playsound({Color color, String songname }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(songname);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playsound(color: Colors.red, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.orange, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.yellow, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.green, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.cyan, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.blue, songname: 'beep'),
              SizedBox(height: 20.0),
              playsound(color: Colors.purple, songname: 'beep '),
              SizedBox(height: 20.0),

            ],
          ),
        ),
      ),
    );
  }
}
