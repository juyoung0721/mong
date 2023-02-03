// import 'package:flutter/material.dart';
//
// import '../../../models/habit.dart';
// import 'package:mongeul/models/monimage.dart';
// import '../components/datecheck_item.dart';
//
// class DateCheckList extends StatefulWidget {
//   const DateCheckList({Key? key,required this.habit}) : super(key: key);
//
//   final Habit habit;
//
//   @override
//   _DateCheckListState createState() => _DateCheckListState();
// }//30일까지 체크할 수 있는 리스트
//
// class _DateCheckListState extends State<DateCheckList> {
//   @override
//   Widget build(BuildContext context) {
//     Habit habit = widget.habit;
//     return Container(
//       child: GridView.builder(
//         itemCount: 30,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 5,
//           mainAxisSpacing: 8,
//           crossAxisSpacing: 5,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return DateCheckItem(index: index,monCheck: habit.dateCheck[index],);
//         },
//         physics: NeverScrollableScrollPhysics(),//스크롤 x
//       ),
//       width: 350,
//       height: 500,
//       padding: EdgeInsets.all(25),
//       // color: Colors.lightBlueAccent,
//     );
//   }
// // Widget build(BuildContext context){
// //   return Container(width: 25,height: 100,color: Colors.amber,);
// // }
// }
