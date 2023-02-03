import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:mongeul/screens/main_lists/components/habit_item.dart';
import 'package:mongeul/screens/main_lists/components/main_list_title.dart';
import '../../models/habit.dart';
import '../../db_helper.dart';

class MainLists extends StatefulWidget {
  @override
  _MainListsState createState() => _MainListsState();
}

class _MainListsState extends State<MainLists> {
  Future<List<Habit>>? habitList;

  @override
  void initState() {
    super.initState();
    habitList = DBHelper().getDB();
    // DBHelper().insertDB(Habit(name: "운동하기",dateCheck: List.filled(30, MonCheck(isCheckState: true,monState: 1))));
    // print(habitList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            MainListTitle(),
            HabitList(habitList: habitList),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final habit = await Navigator.of(context).pushNamed('/add');
          if (habit != null) {
            print((habit as Habit).name);
            DBHelper().insertDB(habit as Habit);
          }
          setState(() {
            // DBHelper().getDB();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xfff6e6bb),
      ),
    );
  }
}

class HabitList extends StatelessWidget {
  Future<List<Habit>>? habitList;

  HabitList({required this.habitList});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.white70,
        height: 500,
        margin: EdgeInsets.all(20),
        child: FutureBuilder(
          future: habitList,
          builder: (context, snapshot) {

                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      // return HabitItem(
                      //     habit: (snapshot.data as List<Habit>)[index]);
                      return Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xfff6e6bb),
                        ),
                        margin: EdgeInsets.only(bottom: 15),
                        child: ListTile(
                          textColor: Color(0xff464135),
                          title: Container(
                            child: Text(
                              '${(snapshot.data as List<Habit>)[index].name}',
                              style: TextStyle(fontSize: 34),
                            ),
                            margin: EdgeInsets.only(left: 28),
                          ),
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => CheckList(habit: habit)));
                          },

                        ),
                      );
                    },
                    itemCount: (snapshot.data as List<Habit>).length,
                  );
                } else {
                  return Text(
                    'No data',
                    style: TextStyle(fontSize: 30),
                  );
                }

            // ignore: dead_code
            return CircularProgressIndicator();
          },
        ));
  }
}
// class HabitList extends StatefulWidget{
//   @override
//   State<HabitList> createState() => _HabitListState();
// }
//
// class _HabitListState extends State<HabitList> {
//   List<Habit> habitList = new List.empty(growable: true);
//
//   @override
//   void initState() {
//     super.initState();
//     habitList.add(Habit(name: "운동하기",dateCheck: List.filled(30, MonCheck(isCheckState: true,monState: 1))));
//     habitList.add(Habit(name: "독서하기",dateCheck: List.filled(30, MonCheck())));
//     habitList.add(Habit(name: "일기쓰기",dateCheck: List.filled(30, MonCheck())));
//   }
//
//
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       // color: Colors.white70,
//       height: 500,
//       margin: EdgeInsets.all(20),
//       child: ListView.builder(
//         itemBuilder: (context, index){
//           return HabitItem(habit: habitList[index]);
//         },
//         itemCount: habitList.length,
//       ),
//     );
//   }
// }
