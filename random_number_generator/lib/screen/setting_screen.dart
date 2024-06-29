import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_toimage.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;

  const SettingScreen({
    required this.maxNumber,
    super.key,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    maxNumber = widget.maxNumber.toDouble();
  }

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
              _Slider(
                value: maxNumber,
                onChanged: onSliderChanged,
              ),
              _Button(
                onPressed: onSavePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onSavePressed() {
      Navigator.of(context).pop(
        maxNumber.toInt(),
      );

  }

  onSliderChanged(double value) {
    setState(() {
      maxNumber = value;
    });
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

class _Slider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const _Slider({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value, //슬라이더 값(0~1까지)
      min: 1000,
      max: 100000,
      activeColor: redColor,
      onChanged: onChanged,
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;

  const _Button({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, foregroundColor: Colors.white //글씨흰색
          ),
      onPressed: onPressed,
      child: Text('저장!'),
    );
  }
}
