import 'package:flutter/material.dart';

class ContainerShabloon extends StatelessWidget {
  final text;
  ContainerShabloon({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
      height: 100,
      width: MediaQuery.of(context).size.width / 2,
      child: Text(text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
