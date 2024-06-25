import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.only(//4개의 면에 직접 커스터마이징해줄수있음 입력안하면 0임
              top: 32.0, //위
              left: 64.0, //왼
              right: 16.0, //오
              bottom: 128.0, //아래
            ),
            child: Container(
              color: Colors.blue,
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
