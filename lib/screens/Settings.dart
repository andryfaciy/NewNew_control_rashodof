import 'package:flutter/material.dart';

import '../main.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabsPageState();
}

class _TabsPageState extends State<SettingsPage> {
  bool lights;
  bool isInstructionView;
  bool selected = false;
  @override
  void initState() {
    isInstructionView = Global.shared.isInstructionView;
    lights = Global.shared.lights;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Экран настроек
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Настройки"),
      ),
      body: Column(children: [
        new Container(
          alignment: FractionalOffset(0.95, 0.02),
          child: SwitchListTile(
            title: Text("Тёмная тема", style: TextStyle(fontSize: 16)),
            value: isInstructionView,
            onChanged: (bool isOn) {
              print(isOn);
              setState(() {
                isInstructionView = isOn;
                Global.shared.isInstructionView = isOn;
                isOn = !isOn;
                print(isInstructionView);
              });
            },
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            inactiveThumbColor: Colors.red,
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.95, 0.02),
          decoration: BoxDecoration(
              border: Border.all(
            width: 0.05,
          )),
          child: SwitchListTile(
            title: Text("Уведомления", style: TextStyle(fontSize: 16)),
            value: lights,
            onChanged: (bool isOn) {
              print(isOn);
              setState(() {
                lights = isOn;
                Global.shared.lights = isOn;
                isOn = !isOn;
                print(lights);
              });
            },
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            inactiveThumbColor: Colors.red,
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
                    child: Text("Язык", style: TextStyle(fontSize: 16)),
                  ),
                  Container(
                    height: 14,
                    child: Text("Русский",
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                        textAlign: TextAlign.left),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          //Для чего он хуй его знает но пусть будет
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
                    child: Text("Выбранная валюта",
                        style: TextStyle(fontSize: 16)),
                  ),
                  Container(
                    height: 14,
                    child: Text("Российский рубль",
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                        textAlign: TextAlign.left),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          //О5 этот парень
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
                  Text("Резервная копия", style: TextStyle(fontSize: 16))
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
                children: [
                  Text("Обратная связь", style: TextStyle(fontSize: 16))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
