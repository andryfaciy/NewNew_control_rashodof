import 'package:flutter/material.dart';

class Newswallet extends StatelessWidget {
  //Экран создания новыго шаблона
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Создание нового кошелька'),
        ),
        body: ListView(
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
                    children: [Text("Баланс", style: TextStyle(fontSize: 16))],
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
                      Text("Иконка",
                          style: TextStyle(
                              fontSize:
                                  16)) //Надо добавить функционала всей этой части кода
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
                    children: [Text("Цвет", style: TextStyle(fontSize: 16))],
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
