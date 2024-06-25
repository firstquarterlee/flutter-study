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
            padding: EdgeInsets.fromLTRB(//ltrb 왼쪽 위 오른쪽 아래 순서다 //온니랑 비슷하지만 이건 순서를 꼭 지켜야됨!!
                32.0,
                64.0,
                16.0,
                8.0
            ),
          child: Container(
            color: Colors.blue,
            width: 50.0,
            height: 50.0,
          ),
        ),
      ),
    )
    ,
    );
  }
}
