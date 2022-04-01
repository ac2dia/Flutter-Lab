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
      appBar: AppBar(title: Text('금호동3가')),
      body: Container(
        height: 300,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Flexible(child: Image.asset('camera.jpeg'), flex: 3),
            Flexible(child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)', style: TextStyle(fontSize: 20.0, height: 2.0)),
                  Text('성동구 행당동 . 끌올 10분 전', style: TextStyle(fontSize: 20.0, height: 2.0)),
                  Text('210,000원', style: TextStyle(fontSize: 20.0, height: 2.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite),
                      Text('4', style: TextStyle(fontSize: 20.0, height: 2.0)),
                    ],
                  )
                ],
              ),
            ), flex: 7) 
          ],
        ),
      ),
    ));
  }
}

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