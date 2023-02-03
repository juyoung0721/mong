import 'package:flutter/material.dart';
import 'package:mongeul/models/habit.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../../models/habit.dart';
import '../../../db_helper.dart';

class AddHabit extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _AddHabit();
}
class _AddHabit extends State<AddHabit> {
  TextEditingController? titleController;
  TextEditingController? contentController;

  @override
  void initState() {
    super.initState();
    titleController = new TextEditingController();
    contentController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Todo 추가'),
    ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: '제목'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: contentController,
                  decoration: InputDecoration(labelText: '할일'),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Habit habit = Habit(name: titleController!.value.text);
                  print('${habit.name}');
                  Navigator.of(context).pop(habit);
                },
                child: Text('저장하기'),
              )
            ],
          ),
        ),
      ),);
  }
}