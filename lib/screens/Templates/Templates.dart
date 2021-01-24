import 'package:flutter/material.dart';

import '../../main.dart';
import '../Newshablone/Newshablone.dart';

class TemplatesPage extends StatelessWidget {
  //Экран Шаблоны
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Шаблоны'),
        ),
        body: ListView(
          children: <Widget>[
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //Вот эту всю хуету надо удалить и сделать как на главном экране
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход",
                                    style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Коммунальные услуги",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                      Text("-23345",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Доход",
                                    style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0,
                                  5), //И вот это тоже ибо это все визуал
                              child: Text("Зарплата",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                      Text("+28345",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход",
                                    style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child:
                                  Text("Т.О.", style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                      Text("-32345",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Доход",
                                    style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text("Стипендия",
                                  style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                      Text("+2500",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                                child: Text("Расход",
                                    style: TextStyle(fontSize: 16))),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child:
                                  Text("Досуг", style: TextStyle(fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                      Text("-650023",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Newshablone()));
          },
        ));
  }
}
