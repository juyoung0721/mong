import 'dart:ffi';
import './monimage.dart';

class Habit{
  int? id;
  String name;
  // List<MonCheck>? dateCheck;


  // Habit({this.id=0,required this.name,required this.dateCheck});
  Habit({this.id,required this.name});

  Map<String,dynamic> toMap(){
    return{
      'name' : name,
      // 'dateCheck' : dateCheck
    };
  }
}

// List<Habit> habitList=[
//   Habit(name: "운동하기",dateCheck: List.filled(30, MonCheck(isCheckState: true,monState: 1))),
//   Habit(name: "독서하기",dateCheck: dateCheckInit),
//   Habit(name: "다이어트하기",dateCheck: dateCheckInit),
//   Habit(name: "물 마시기",dateCheck: dateCheckInit),
// ];

//Habit의 datecheck 초기화
List<MonCheck> dateCheckInit = List.filled(30, MonCheck());

class MonCheck{
  bool? isCheckState;
  //date별로 상태 기록 여부를 알 수 있는 변수
  //기본값 false 상태 기록하면 true
  int? monState;
  //상태 기록 여부가 true일때 그때의 상태 번호

  MonCheck({this.isCheckState,this.monState});
}

// String dateImgAdr(int index, MonCheck moncheck){
//   String img_adr;
//
//   if(moncheck.isCheckState){
//     img_adr = Images_stat[moncheck.monState];
//   }else{
//     img_adr = Images_num[index];
//   }
//
//   return img_adr;
//
// }