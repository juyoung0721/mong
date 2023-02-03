// import 'package:flutter/material.dart';
//
// import '../../../models/habit.dart';
// import 'package:mongeul/models/monimage.dart';
// import 'package:mongeul/screens/main_lists/main_lists.dart';
// import './date_dialog_item.dart';
//
// class DateCheckItem extends StatefulWidget {
//   const DateCheckItem({Key? key, required this.index,required this.monCheck}) : super(key: key);
//
//   final MonCheck monCheck;
//   final int index;
//
//   @override
//   _DateCheckItemState createState() => _DateCheckItemState();
// }
//
// class _DateCheckItemState extends State<DateCheckItem> {
//
//
//   @override
//   void initState() {
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     int index = widget.index;
//     MonCheck monCheck = widget.monCheck;
//
//     return IconButton(
//       icon: monImg(dateImgAdr(index, monCheck)),
//       highlightColor: Color(0x50f6e6bb),
//       splashColor: Color(0x00fffffff),
//       onPressed: () {
//         SelectDialog(index,monCheck);
//       },
//     );
//
//   }
//
//
//   void SelectDialog(int index, MonCheck monCheck) {
//     // var _imagePath = dateImgAdr(index, dateCheck[index]);
//
//
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Container(
//               child: Text('오늘의 결과'),
//               alignment: Alignment.center,
//             ),
//             content: Container(
//               // ignore: sort_child_properties_last
//               child: Column(
//                 children: <Widget>[
//                   DateDialogItem(index: index, monCheck: monCheck),
//                 ],
//               ),
//               height: 210,
//             ), //상태 이미지 목록
//             actions: <Widget>[
//               TextButton(
//                 child: Text('저장', style: TextStyle(fontSize: 24)),
//                 onPressed: () => Navigator.of(context).pop(),
//               ),
//               TextButton(
//                 child: Text('지우기', style: TextStyle(fontSize: 24)),
//                 onPressed: () => Navigator.of(context).pop(),
//               ),
//             ],
//           );
//         });
//   }
//
//   // DialogStateImageList(var _imagePath) {
//   //   return Row(
//   //     children: <Widget>[
//   //       GestureDetector(
//   //         child: Image.asset('image/mong.png', width: 60),
//   //         onTap: () {
//   //           _imagePath = 'image/mong.png';
//   //           print(_imagePath);
//   //         },
//   //       ),
//   //       GestureDetector(
//   //         child: Image.asset(
//   //           'image/mong_fail.png',
//   //           width: 60,
//   //         ),
//   //         onTap: () {
//   //           _imagePath = 'image/mong_fail.png';
//   //           print(_imagePath);
//   //         },
//   //       ),
//   //     ],
//   //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//   //   );
//   // }
// }
