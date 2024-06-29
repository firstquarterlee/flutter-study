import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_toimage.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0, //패딩줘서 옆에 이격 생기게함
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, //버튼 쫙~ 길게
            children: [
              _Number(
                maxNumber: maxNumber,
              ),
              _Slider(),
              _Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Number extends StatelessWidget {
  final double maxNumber;

  const _Number({
    required this.maxNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: NumberToImage(
          number: maxNumber.toInt(),
        ),
      ),
    );
  }
}

class _Slider extends StatefulWidget {


  const _Slider({super.key});

  @override
  State<_Slider> createState() => _SliderState();
}

class _SliderState extends State<_Slider> {
  double maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: maxNumber, //슬라이더 값(0~1까지)
      min: 1000,
      max: 100000,
      onChanged: (double value) {
        setState(() {
          this.maxNumber = value; //this.maxNumber 72번째 줄 값이고 //뒤에 value는 double value 이 벨류다.
        });
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, foregroundColor: Colors.white //글씨흰색
          ),
      onPressed: () {
        Navigator.of(context).pop(); //팝또는 푸쉬 메서드 사용 가능
      },
      child: Text('저장!'),
    );
  }
}
