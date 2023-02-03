import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'screens/main_lists/main_lists.dart';
import 'screens/checklist/checklist.dart';
import 'screens/main_lists/components/add_habit.dart';
import 'theme.dart';
import './db_helper.dart';

import '../../models/habit.dart';

void main() {
  runApp(MongeulApp());
}

class MongeulApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Mongeul_App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: '/',
      routes: {
        '/' : (context) => MainLists(),
        '/add': (context) => AddHabit(),
        // '/checklist' : (context) => CheckList(habit: habit),
      },
    );
  }
}