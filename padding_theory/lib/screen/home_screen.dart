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
            padding: EdgeInsets.all(8.0),//차일드컨테이너 바깥에 모두 8픽셀만큼 칠하라고 표시해둔거다.
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
