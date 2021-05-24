import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ),);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Expanded sound({Color color,int num})
  {

      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: (){
            final audio=AudioCache();
            audio.play('note$num.wav');
          },
        ),
      );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xylophone"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          sound(color: Colors.red,num: 1),
          sound(color: Colors.blue,num: 2),
          sound(color: Colors.green,num: 3),
          sound(color: Colors.teal,num: 4),
          sound(color: Colors.indigo,num: 5),
          sound(color: Colors.pink,num: 6),
          sound(color: Colors.orange,num: 2),

        ],
      ),
    );
  }
}
