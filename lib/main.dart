import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home:ball(),
      ),
    );
class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNumber =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue.shade500,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          Expanded(
            child:Center(
                child: TextButton(
                    onPressed: () {
                      setState((){
                        ballNumber= Random().nextInt(4)+1;
                      });
                    },
                    child: Image.asset('images/ball$ballNumber.png')
                ),
            ),
          ),
        ],

      ),
    );
  }
}
