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
            child: Align(
              //결론 -> 우리가 정렬이 정확히 어디되야 되는지 모르는 위젯 안에서 우리가 정확한
              //정렬을 해주고 싶다면 Align 위젯을 쓰면 되고, Alignment 파라미터에 우리가
              //Alignment라는 클래스를 사용해서 정렬을 진행을 해주면 된다.!!
              alignment: Alignment(
                0.5,//x
                -0.5,//y
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