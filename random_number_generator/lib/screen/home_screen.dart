import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_toimage.dart';
import 'package:random_number_generator/constant/color.dart';
import 'dart:math';

import 'package:random_number_generator/screen/setting_screen.dart'; // 세팅스크린 불러옴

class HomeScreen extends StatefulWidget {
  //statefulwidget으로 바꾸는 이유 상태관리하려고!
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers = [
    123,
    456,
    789,
  ];
  int maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// 제목과 아이콘 버튼이 있는 곳
              _Header(
                onPressed: onSettingIconPressed,
              ),

              /// 숫자가 있는 곳
              _Body(
                numbers: numbers,
              ),

              /// 버튼이 있는 곳
              _Footer(
                onPressed: generateRandomNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onSettingIconPressed() async {
    //클래스에서 제공하는 context다!
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SettingScreen(
            maxNumber: maxNumber,
          );
        },
      ),
    );

    maxNumber = result;
  }

  generateRandomNumber() {
    final rand = Random();

    final Set<int> newNumbers = {}; //Set쓰면 중복된거 안들어감

    while (newNumbers.length < 3) {
      final randomNumber = rand.nextInt(maxNumber);

      newNumbers.add(randomNumber);
    }

    setState(() {
      numbers = newNumbers.toList();
    });
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;

  const _Header({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '랜덤숫자 생성기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          color: redColor,
          onPressed: onPressed,
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> numbers;

  const _Body({required this.numbers, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers
            .map(
                (e) => NumberToImage( //e -> 123 456 789 랜덤으로
                  number: e,
                ))
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;

  const _Footer({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        foregroundColor: Colors.white, //백그라운드 위에 덮여지는 색 변경함
      ),
      child: Text('생성하기'),
    );
  }
}
