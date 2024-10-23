import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int P1left = 1, P1right = 1, P1total = 0, P2left = 1, P2right = 1, P2total = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeValue();
                      });
                      print('Left Clicked');
                      print(P1left);
                    },
                    child: Image.asset('images/dice$P1left.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeValue();
                      });
                      print('Right Clicked');
                      print(P1right);
                    },
                    child: Image.asset('images/dice$P1right.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(),
          Text('Player 1 Total roll is $P1total',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          if(P1left == P1right)
           const Text(
              'Both Dice Are Equal',
             style: TextStyle(
               fontSize: 24,
               color: Colors.white,
             ),
            )
          else if (P1left > P1right)
            const Text(
              'Left Dice Rolled Higher',
              style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            )
          else
            const Text(
              'Right Dice Rolled Higher',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeValue();
                      });
                      print('Left Clicked');
                      print(P2left);
                    },
                    child: Image.asset('images/dice$P2left.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeValue();
                      });
                      print('Right Clicked');
                      print(P2right);
                    },
                    child: Image.asset('images/dice$P2right.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(),
          Text('Player 2 Total roll is $P2total',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          if(P2left == P2right)
            const Text(
              'Both Dice Are Equal',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          else if (P2left > P2right)
            const Text(
              'Left Dice Rolled Higher',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          else
            const Text(
              'Right Dice Rolled Higher',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          const SizedBox(),
          if(P1total == P2total)
            const Text(
              'Draw',
              style: TextStyle(
             fontSize: 24,
              color: Colors.white,
            ),
            )
          else if(P1total > P2total)
            const Text(
              'P1 Wins!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          else
            const Text(
              'P2 Wins!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
        ],
      ),
    );
  }


  void changeValue() {
    P1right = 1 + Random().nextInt(6);
    P1left = 1 + Random().nextInt(6);
    P1total = P1left + P1right;
    P2right = 1 + Random().nextInt(6);
    P2left = 1 + Random().nextInt(6);
    P2total = P2left + P2right;
  }
}
