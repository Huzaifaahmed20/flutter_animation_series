import 'package:flutter/material.dart';

class BasicImplicitAnimation extends StatefulWidget {
  BasicImplicitAnimation({Key key}) : super(key: key);

  @override
  _BasicImplicitAnimationState createState() => _BasicImplicitAnimationState();
}

class _BasicImplicitAnimationState extends State<BasicImplicitAnimation> {
  bool _smallBox = false;

  void _increaseSize() {
    setState(() {
      _smallBox = !_smallBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _smallBox ? 200 : 400,
          height: _smallBox ? 200 : 400,
          color: _smallBox ? Colors.blue : Colors.red,
          duration: Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseSize,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
