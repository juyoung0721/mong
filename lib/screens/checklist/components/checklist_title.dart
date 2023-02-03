// import 'package:flutter/material.dart';
//
// import '../../../models/habit.dart';
//
// class CheckListTitle extends StatelessWidget {
//   final Habit habit;
//   const CheckListTitle({required this.habit});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           IconButton(
//             icon: Icon(Icons.chevron_left_rounded, size: 50),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           Container(
//             child: Text(
//               '${habit.name}',
//               style: TextStyle(fontSize: 45),
//             ),
//             width: double.maxFinite,
//             alignment: Alignment.center,
//           ),
//         ],
//         crossAxisAlignment: CrossAxisAlignment.start,
//       ),
//       margin: EdgeInsets.only(top: 90),
//     );
//   }
// }
