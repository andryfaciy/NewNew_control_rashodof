import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  bool complete;
  @HiveField(2)
  String date;
  @HiveField(3)
  int amount;
  @HiveField(4)
  String category;

  Todo({this.complete = false, this.date, this.amount, this.category});
}
