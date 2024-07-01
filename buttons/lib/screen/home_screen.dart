import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                /// 배경 색깔
                backgroundColor: Colors.red,
                disabledBackgroundColor: Colors.grey,//비활성화될때는 disabe..여기가 활성화된다.
                /// 배경 위의 색깔
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.red,
                /// 그림자
                shadowColor: Colors.green,
                /// 그림자 얼마나 올릴지?
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                /// 패딩
                padding: EdgeInsets.all(32.0),
                /// 박스 테두리 꾸밀때
                side: BorderSide(
                  color: Colors.black,
                  /// 박스 테두리 굵어짐
                  width: 12.0,
                ),
                /// 최소 사이즈(200 width, 150 height)
                //minimumSize: Size(200, 150), -> 최소
                //maximumSize: Size(100, 150), -> 최대
                //fixedSize: Size(100, 150), -> 고정
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton( //d있어야됨
              onPressed: (){},
              child: Text('OutlineButton'),
            ),
            TextButton(
              onPressed: (){},
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
