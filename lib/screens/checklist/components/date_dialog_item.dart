// import 'package:flutter/material.dart';
//
// import '../../../models/habit.dart';
// import 'package:mongeul/models/monimage.dart';
//
// class DateDialogItem extends StatefulWidget {
//   const DateDialogItem({Key? key, required this.index, required this.monCheck}) : super(key: key);
//
//   final MonCheck monCheck;
//   final int index;
//
//   @override
//   _DateDialogItemState createState() => _DateDialogItemState();
// }
//
// class _DateDialogItemState extends State<DateDialogItem> {
//   MonCheck monCheck1 = MonCheck();
//
//   @override
//   void initState(){
//     super.initState();
//     monCheck1 = widget.monCheck;
//   }
//   @override
//   Widget build(BuildContext context) {
//     int index = widget.index;
//
//
//     return Column(
//       children: <Widget>[
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(70),
//             border: Border.all(color: Color(0xff837e7a), width: 3),
//           ),
//           child: Container(
//             child: Image.asset(dateImgAdr(index, monCheck1)),
//             padding: EdgeInsets.all(10),
//           ),
//           height: 120,
//           width: 120,
//         ), //현재 상태를 나타내는 이미지(동그라미 큰이미지)
//         // ignore: prefer_const_constructors
//         SizedBox(
//           height: 30,
//         ),
//         Row(
//           // ignore: sort_child_properties_last
//           children: <Widget>[
//             InkWell(
//
//               child: Image.asset('image/mong.png', width: 60),
//               onTap: () {
//                 setState(() {
//                   monCheck1.isCheckState=true;
//                   monCheck1.monState=0;
//                   // print(dateImgAdr(index, dateCheck[index]));
//                   // print('${dateCheck[0].isCheckState}, ${dateCheck[0].monState}');
//                   // print('${dateCheck[1].isCheckState}, ${dateCheck[1].monState}');
//                   // print('${dateCheck[2].isCheckState}, ${dateCheck[2].monState}');
//                 });
//               },
//             ),
//             GestureDetector(
//               child: Image.asset(
//                 'image/mong_fail.png',
//                 width: 60,
//               ),
//               onTap: () {
//                 setState(() {
//                   monCheck1.isCheckState=true;
//                   monCheck1.monState=1;
//                   // print(dateImgAdr(index, dateCheck[index]));
//                   // print('${dateCheck[0].isCheckState}, ${dateCheck[0].monState}');
//                   // print('${dateCheck[1].isCheckState}, ${dateCheck[1].monState}');
//                   // print('${dateCheck[2].isCheckState}, ${dateCheck[2].monState}');
//
//                 });
//               },
//             ),
//           ],
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//         )
//       ],
//     );
//   }
// }
