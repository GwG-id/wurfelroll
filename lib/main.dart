import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(117, 108, 53, 1.0,),
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'WürfelSturm',
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromRGBO(217, 191, 56, 1.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Text(            // habe entfernt, aber alles mit zweite str geschaft
              //'Drehe dich im Wirbelsturm der Enscheidungen!',
              //style: TextStyle(fontSize: 16),
            ],
          ),
          //title: Text('WürfelSturm'), // in eine Str, wen ich will 2 str inzu.soll Column schreiben
          backgroundColor: const Color.fromRGBO(66, 63, 34, 1.0),
          elevation: 30.0, // selbe hinzufügen ??????
        ),
        body: const Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget { // Dice ist Klasse, erbt von StatefulWidget, kann man verändert
  const Dice({super.key}); /* Übertragung des Schlüssels an die Elternklasse
                                             Key? указывает, что параметр может принимать значение null */

  @override // anotation, uberschreiben diese Methode,
  _DiceState createState() => _DiceState(); //Dies ist eine Methode, die eine neue Instanz der Statusklasse zurückgibt. Sie wird aufgerufen, wenn Flutter eine Instanz deines Widgets Dice erstellt.
}

class _DiceState extends State <Dice> { // in Projekt von Udemy andere Variable nuzt  var currentDiceRoll = 5;
  int diceNo = 5;

  void rollDiceState () {
    setState(() {
      diceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) { // Method build center Bild mit kub
    return Center(
      //child: Expanded(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: TextButton(              // in Original war FlatButton GPT sagt ist alltes
          child: Image.asset("assets/images/dice-$diceNo.png"),
          onPressed:  rollDiceState,
        ),
      ),
    );
  }
}
