import 'package:flutter/material.dart';
import '../../../models/habit.dart';
import '../../../screens/checklist/checklist.dart';

class HabitItem extends StatelessWidget {
  final Habit habit;

  const HabitItem({required this.habit});

  @override
  Widget build(BuildContext context) {
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
            '${habit.name}',
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
    // return Container(
    //   height: 70,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(25),
    //     color: Color(0xfff6d3d3),
    //   ),
    //   margin: EdgeInsets.only(bottom: 15),
    //   child: Center(
    //     child: Text(
    //       '${habit.name}',
    //       style: TextStyle(fontSize: 34),
    //     ),
    //   ),
    // );
  }
}
