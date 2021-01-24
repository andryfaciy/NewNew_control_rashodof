import 'package:flutter/material.dart';

class GestureButton extends StatelessWidget {
  final text;
  GestureButton({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped a Container");
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            border: Border.all(
          width: 0.05,
        )),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
          child: Column(
            children: [Text(text, style: TextStyle(fontSize: 16))],
          ),
        ),
      ),
    );
  }
}
