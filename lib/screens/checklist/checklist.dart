// import 'package:flutter/material.dart';
// import 'package:mongeul/models/monimage.dart';
// import 'package:mongeul/screens/checklist/components/checklist_title.dart';
// import 'package:mongeul/screens/checklist/components/datechecklist.dart';
// import '../../models/habit.dart';
//
// class CheckList extends StatelessWidget {
//   final Habit habit;
//
//   // CheckList({required this.habit}) : super(key: key);
//   const CheckList({required this.habit});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(5),
//         child: Column(
//           children: [
//             CheckListTitle(habit: habit),
//             DateCheckList(habit: habit),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // @override
//   // Widget _CheckListTitle() {
//   //   return Container(
//   //     child: Column(
//   //       children: [
//   //         IconButton(
//   //           icon: Icon(Icons.chevron_left_rounded, size: 50),
//   //           onPressed: () {
//   //             Navigator.of().pop();
//   //           },
//   //         ),
//   //         Container(
//   //           child: Text(
//   //             '${habit.name}',
//   //             style: TextStyle(fontSize: 45),
//   //           ),
//   //           width: double.maxFinite,
//   //           alignment: Alignment.center,
//   //         ),
//   //       ],
//   //       crossAxisAlignment: CrossAxisAlignment.start,
//   //     ),
//   //     margin: EdgeInsets.only(top: 90),
//   //   );
//   // }
// }
//
//
// // Center(
// // child:Text(
// // '${habit.name}',
// // style: TextStyle(fontSize: 34),
// // ),
// // ),
