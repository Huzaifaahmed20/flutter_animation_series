import 'package:flutter/material.dart';

class BasicImplicitAnimation extends StatefulWidget {
  BasicImplicitAnimation({Key key}) : super(key: key);

  @override
  _BasicImplicitAnimationState createState() => _BasicImplicitAnimationState();
}

class _BasicImplicitAnimationState extends State<BasicImplicitAnimation> {
  bool _bigContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: _bigContainer ? Colors.blue : Colors.red,
          height: _bigContainer ? 400 : 200,
          width: _bigContainer ? 400 : 200,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bigContainer = !_bigContainer;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
