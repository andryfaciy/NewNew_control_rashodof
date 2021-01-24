import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive_example/screens/Home.dart';
import 'package:todo_hive_example/screens/add_todo/add_transaction.dart';
import 'models/todo.dart';
import 'client/hive_names.dart';

void main() async {
  //Начало программы
  //   hive initialization
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>(HiveBoxes.todo);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() async {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'История транзакций'),
    );
  }
}

class Global {
  static final shared = Global();
  bool isInstructionView = false;
  bool lights = false;
}

//Отчеты я на хуй удалил ибо это юзлес тема
