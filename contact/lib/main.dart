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
      body: UserListView(),
    ));
  }
}

class UserListView extends StatelessWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowContainer(
              color: Colors.red,
              icon: Icons.man,
              name: '홍길동',
            ),
            RowContainer(
              color: Colors.yellow,
              icon: Icons.people,
              name: '임꺽정',
            ),
            RowContainer(
              color: Colors.green,
              icon: Icons.woman,
              name: '장만옥',
            ),
          ],
        )
      ],
    );
  }
}

class RowContainer extends StatelessWidget {
  const RowContainer({Key? key, this.color, this.icon, this.name})
      : super(key: key);

  final Color? color;
  final IconData? icon;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(
          color: color,
          icon: icon,
        ),
        TextContainer(
          name: name,
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({Key? key, this.color, this.icon}) : super(key: key);

  final Color? color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: color!,
        )),
        child: Icon(icon!));
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key, this.name}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.black,
      )),
      child: Text(name!),
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