import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../client/hive_names.dart';
import '../main.dart';
import '../models/todo.dart';
import 'Settings.dart';
import 'Templates.dart';
import 'Wallets.dart';
import 'add_todo/add_transaction.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: new Drawer(
        //Боковая выползающая менюшка
        child: new ListView(
          children: <Widget>[
            new AppBar(
              title: new Text('Меню'),
            ),
            ButtonTheme(
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TemplatesPage()));
                },
                child: Text('Шаблоны', style: TextStyle(fontSize: 15)),
                color: Colors.white,
              ),
            ),
            ButtonTheme(
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                child: Text('Настройки', style: TextStyle(fontSize: 15)),
                color: Colors.white,
              ),
            ),
            ButtonTheme(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WalletsPage()));
                  },
                  child: Text('Кошельки', style: TextStyle(fontSize: 15)),
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box<Todo>(HiveBoxes.todo).listenable(),
        builder: (context, Box<Todo> box, _) {
          if (box.values.isEmpty)
            return Center(
              child: Text("Лист транзакций пуст"),
            );
          return ListView.builder(
            //Список
            itemCount: box.values.length,
            itemBuilder: (context, index) {
              Todo res = box.getAt(index);
              return Dismissible(
                background: Container(color: Colors.red),
                key: UniqueKey(),
                onDismissed: (direction) {
                  res.delete();
                },
                child: ListTile(
                    //title: Text("$res.Summa"),
                    subtitle: Text(res.Cat +
                        '                                                                       ' +
                        res.Data +
                        ' ₽'),
                    leading: res.complete
                        ? Icon(Icons.check_box)
                        : Icon(Icons.check_box_outline_blank),
                    onTap: () {
                      res.complete = !res.complete;
                      res.save();
                    }),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        //Плавающая кнопка в нижнем правом углу
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AddTodo())),
        tooltip: 'Add transaction',
        child: Icon(Icons.add),
      ),
    );
  }
}
