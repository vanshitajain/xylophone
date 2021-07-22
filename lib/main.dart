import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(Xylophone());
}
class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int num)
  {
    final player= AudioCache();
    player.play('note$num.wav');

  }

  Expanded key({int number,Color color}){
    return Expanded(
      child:FlatButton(
        color:color,
        onPressed:() {
          playsound(number);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold (
        backgroundColor: Colors.black,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              key(number: 1,color:Colors.red),
              key(number: 2,color:Colors.orange),
              key(number: 3,color:Colors.yellow),
              key(number: 4,color:Colors.green),
              key(number: 5,color:Colors.blue),
              key(number: 6,color:Colors.blue[900]),
              key(number: 7,color:Colors.purple),
            ],
          ),

        ),
      ),
    );
  }
}


