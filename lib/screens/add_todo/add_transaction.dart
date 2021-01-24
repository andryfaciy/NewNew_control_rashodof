import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../models/todo.dart';
import '../../client/hive_names.dart';
import '../Wallets/Wallets.dart';

class AddTodo extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  int amount;
  String date;
  String category;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    autofocus: true,
                    initialValue: '',
                    decoration: const InputDecoration(
                      labelText: 'Дата',
                    ),
                    onChanged: (value) {
                      setState(() {
                        date = value;
                      });
                    },
                    validator: (val) {
                      return val.trim().isEmpty
                          ? 'Поле сумма должно быть заполнено'
                          : null;
                    },
                  ),
                  TextFormField(
                    initialValue: '',
                    decoration: const InputDecoration(
                      labelText: 'Категория',
                    ),
                    onChanged: (value) {
                      setState(() {
                        category = value;
                      });
                    },
                    validator: (val) {
                      return val.trim().isEmpty
                          ? 'Поле категория должно быть заполнено'
                          : null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    initialValue: '',
                    decoration: const InputDecoration(
                      labelText: 'Сумма',
                    ),
                    onChanged: (value) {
                      setState(() {
                        amount = int.parse(value);
                      });
                    },
                    validator: (val) {
                      return val.trim().isEmpty
                          ? 'Поле дата должно быть заполнено'
                          : null;
                    },
                  ),
                  OutlineButton(
                    child: Text('Добавить'),
                    onPressed: _validateAndSave,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      _onFormSubmit();
    } else {
      print('Недействительно');
    }
  }

  void _onFormSubmit() {
    Box<Todo> contactsBox = Hive.box<Todo>(HiveBoxes.todo);
    contactsBox.add(Todo(amount: amount, date: date, category: category));
    WalletsPage.walletAmount += amount;
    Navigator.of(context).pop();
  }
}
