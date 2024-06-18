import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Align( ///Align위젯 ///정렬이 어디되야하는지 모르는 위젯 안에서 우리가 정확한 정렬을 해주고 싶다면 Align 위젯을 써라
            alignment: Alignment( /// alignment파라미터에 Alignment라는 클래스를 사용해서 x,y 정렬을 진행을 해주면된다.
              0.5, ///사실상 flutter의 대부분의 정렬은 이렇게 이뤄진다.
                -0.5,
            ),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

///옵셔널 엔터 remove하면 위젯 삭제됨