import 'package:flutter/material.dart';
import 'package:mp2/models/yahtzeeGame.dart';
import 'package:mp2/views/scoreCardWidget.dart';
import 'package:provider/provider.dart';
import 'diceWidget.dart';

class YahtzeeGameScreen extends StatelessWidget {
  const YahtzeeGameScreen({super.key});

  @override
Widget build(BuildContext context) {
  final game = Provider.of<YahtzeeGame>(context);

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange, 
      toolbarHeight: 80,
      title: Text(
      'Yahtzee',
      style: TextStyle(
        fontSize: 60, // Set your desired font size
        fontWeight: FontWeight.bold, // Make the text bold
      ),
    ),
      
    ),
    body: ListView(
      padding: EdgeInsets.all(20), // Adjust padding as needed
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // INFO SECTION
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rolls Left: ${game.rollsLeft}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    ' | Chances Left: ${game.chanceLeft}',
                    style: const TextStyle(fontSize: 24),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // DICE ROW WIDGET
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < 5; i++)
                    DiceWidget(
                      index: i,
                      isReserved: game.reservedDice[i],
                      onToggleReserved: () {
                        game.toggleReserved(i);
                      },
                    ),
                ],
              ),
              const SizedBox(height: 20),
              // SCORECARD WIDGET
              Container(
                decoration: BoxDecoration(
    color: const Color.fromARGB(255, 214, 210, 210), // Set your desired background color here
  ),
  child: Column(
    children: [
      ScoreCardWidget(),
      SizedBox(height: 10),
      // TOTAL SCORE WIDGET
      Text(
        'Total Score: ${game.totalScore}',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20),
      // ROLL DICE BUTTON
    ],
  ),
),
   SizedBox(height: 20),
              // ROLL DICE BUTTON)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    fixedSize: Size(95, 70), // Adjust the size as needed
  ),
               
                onPressed: game.rollsLeft > 0
                    ? () {
                        game.rollDice();
                      }
                    : null,
                child: Text(
                    game.rollsLeft > 0 ? 'Roll Dice' : 'Select Score'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}