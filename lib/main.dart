import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.mp3'));
}

Expanded buildWidget(Color backgroundColor,int soundNumber) {
  final notes = ['C', 'D', 'E', 'F', 'G', 'A', 'B'];
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
      ),
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(
          notes[soundNumber -1],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildWidget(Colors.red,1),
              buildWidget(Colors.orange,2),
              buildWidget(Colors.yellow,3),
              buildWidget(Colors.green,4),
              buildWidget(Colors.blue,5),
              buildWidget(Colors.blue.shade800,6),
              buildWidget(Colors.purple,7)
            ],
          ),
        ),
      ),
    );
  }
}
