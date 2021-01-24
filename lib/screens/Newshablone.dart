import 'package:flutter/material.dart';

class Newshablone extends StatelessWidget {
  //Экран создания новыго шаблона
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Создание нового шаблона'),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.blue[600],
                  padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text("Расход",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.fromLTRB(100, 40, 0, 0),
                  child: Text("Доход",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
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
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Column(
                    children: [
                      Text("Название", style: TextStyle(fontSize: 16))
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
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Column(
                    children: [Text("Сумма", style: TextStyle(fontSize: 16))],
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
                  padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Column(
                    children: [
                      Text("Комментарий", style: TextStyle(fontSize: 16))
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
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        child: Text("Кошелек", style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                        height: 14,
                        child: Text("Кошелек 1",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                            textAlign: TextAlign.left),
                      ),
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
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        child: Text("Период списания",
                            style: TextStyle(fontSize: 16)),
                      ),
                      Container(
                        height: 14,
                        child: Text("1 месяц",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                            textAlign: TextAlign.left),
                      ),
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
          onPressed: () {},
        ));
  }
}
