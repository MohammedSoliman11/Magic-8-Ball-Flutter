import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask me Anything :)'),
          centerTitle: true,
        ),
        body: BallPage(),
      ),
    )

  );

}
class BallPage extends StatefulWidget {
  @override
  _BAllPageState createState() => _BAllPageState();
}

class _BAllPageState extends State<BallPage> {
  @override
  int num = 1;
  Random random = new Random();
  Widget build(BuildContext context) {
    return
      Center(
        child: Row(
          children: [
            Expanded(
              child:FlatButton(
                onPressed: (){
                  setState(() {
                      num = random.nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$num.png'),),
            ),
          ],
        ),
      );
  }
}

