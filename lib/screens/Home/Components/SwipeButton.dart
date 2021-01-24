import 'package:flutter/material.dart';

class SwipeButton extends StatelessWidget {
  final text;
  final route;
  SwipeButton({this.text, this.route});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 60,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Text(text, style: TextStyle(fontSize: 15)),
        color: Colors.white,
      ),
    );
  }
}
