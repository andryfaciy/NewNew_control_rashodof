import 'package:flutter/material.dart';

import 'Components/BigGestureButton.dart';
import 'Components/ContainerShabloon.dart';
import 'Components/GestureButton.dart';

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
                ContainerShabloon(text: 'Расход'),
                ContainerShabloon(text: 'Доход'),
              ],
            ),
            GestureButton(text: 'Название'),
            GestureButton(text: 'Сумма'),
            GestureButton(text: 'Комментарий'),
            BigGestureButton(text1: 'Период списания', text2: '1 месяц'),
            BigGestureButton(text1: 'Кошелек', text2: 'Кошелек 1'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
