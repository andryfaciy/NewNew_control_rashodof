import 'package:flutter/material.dart';

class BigGestureButton extends StatelessWidget {
  final text1;
  final text2;
  BigGestureButton({this.text1, this.text2});

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
          padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                child: Text(text1, style: TextStyle(fontSize: 16)),
              ),
              Container(
                height: 14,
                child: Text(text2,
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                    textAlign: TextAlign.left),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
