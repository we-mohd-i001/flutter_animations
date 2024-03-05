import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text('Animate margin'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.purpleAccent;
                });
              },
              child: Text('Animate color'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = 300;
                });
              },
              child: Text('Animate color'),
            ),
          ],
        ),
      ),
    );
  }
}
