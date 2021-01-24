import 'package:flutter/material.dart';

import '../../main.dart';
import '../Newswallet/Newswallet.dart';

class WalletsPage extends StatelessWidget {
  //Экран кошельков тоже самое и что и с шаблонами надо делать пункты как на главном экране
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Кошельки'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(
          children: [
            GestureDetector(
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child:
                            Text("Кошелек 1", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("65023 Р",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child:
                            Text("Кошелек 2", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("6523 Р",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        width: 200,
                        child:
                            Text("Кошелек 3", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(100, 5, 0, 0),
                          child: Text("50232 Р",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Newswallet()));
          },
        ));
  }
}
