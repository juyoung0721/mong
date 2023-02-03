import 'package:flutter/material.dart';

Image monImg(String address) {
  return Image(
    image: AssetImage('$address'),
    width: 70,
    // height: 100,
    fit: BoxFit.fill,
  );
}

List<String> Images_num = [
  'image/gray/gray1.png',
  'image/gray/gray2.png',
  'image/gray/gray3.png',
  'image/gray/gray4.png',
  'image/gray/gray5.png',
  'image/gray/gray6.png',
  'image/gray/gray7.png',
  'image/gray/gray8.png',
  'image/gray/gray9.png',
  'image/gray/gray10.png',
  'image/gray/gray11.png',
  'image/gray/gray12.png',
  'image/gray/gray13.png',
  'image/gray/gray14.png',
  'image/gray/gray15.png',
  'image/gray/gray16.png',
  'image/gray/gray17.png',
  'image/gray/gray18.png',
  'image/gray/gray19.png',
  'image/gray/gray20.png',
  'image/gray/gray21.png',
  'image/gray/gray22.png',
  'image/gray/gray23.png',
  'image/gray/gray24.png',
  'image/gray/gray25.png',
  'image/gray/gray26.png',
  'image/gray/gray27.png',
  'image/gray/gray28.png',
  'image/gray/gray29.png',
  'image/gray/gray30.png',
];
//회색배경에 숫자적힌(기본값) 이미지를 담은 주소
//3이 적힌 이미지를 쓰고 싶다면 Images_num[2]가 주소
//monImg(Images_num[숫자])의 형식으로 쓰면 된다.

List<String> Images_stat = [
  'image/mong.png', //index 0(pink smile)
  'image/mong_fail.png',  //index 0(yellow sad)
];//상태 이미지
