import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless + tab and naming => MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: sizeBox,
    ));
  }
}

// 변수에 저장하는 방법
var sizeBox = SizedBox(
  child: Text('안녕'),
);

// 클래스, 함수에 저장하는 방법
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}

// 재사용 많은 UI, 큰 페이지들을 커스텀 위젯으로 생성!


// 위젯 4가지 요소: 글자, 이미지, 아이콘, 박스
// 1. Text('')
// 2. Icon(Icons.아이콘이름)
// 3. Image.asset('경로')
// - assets 폴더 생성 후 해당 경로에 이미지 넣어줘야합니다.
// 4. 네모박스 넣을 땐 Container()
// - width, height 단위는 LP (약 1.2cm)
// - 크기 지정시 시작 위치를 지정해줄 때 부모 위젯을 먼저 선언합니다.

/*
home: Text('안녕')
home: Icon(Icons.star)
home: Image.asset('dog.jpeg')
home: Center(
  child: Container(width: 50, height: 50, color: Colors.blue),
)

여러 위젯 가로로 Row( children: [])
여러 위젯 세로로 Column( children: [])
*/