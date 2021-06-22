import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() { return _DicePageState();}
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumbber = 6;
  int rightDiceNumbber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Random random = Random();
                  leftDiceNumbber = random.nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumbber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Random random = Random();
                  rightDiceNumbber = random.nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumbber.png'),
            ),
          ),
          //Expanded(child: Image(image: AssetImage('images/dice3.png'),)),
          // Expanded(child: Image(image: AssetImage('images/dice4.png'),)),
          // Expanded(child: Image(image: AssetImage('images/dice5.png'),)),
          // Expanded(child: Image(image: AssetImage('images/dice6.png'),)),png
        ],
      ),
    );
  }
}

//
//
// class DicePage extends StatelessWidget {
//   int leftDiceNumbber = 6;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         //crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 leftDiceNumbber = 5;
//                 print('hi$leftDiceNumbber');
//               },
//               child: Image.asset('images/dice$leftDiceNumbber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('hi2');
//               },
//               child: Image(
//                 image: AssetImage('images/dice2.png'),
//               ),
//             ),
//           ),
//           //Expanded(child: Image(image: AssetImage('images/dice3.png'),)),
//           // Expanded(child: Image(image: AssetImage('images/dice4.png'),)),
//           // Expanded(child: Image(image: AssetImage('images/dice5.png'),)),
//           // Expanded(child: Image(image: AssetImage('images/dice6.png'),)),png
//         ],
//       ),
//     );
//   }
// }
