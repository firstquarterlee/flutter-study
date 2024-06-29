import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';
import 'dart:math';

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
              _Header(),

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

  generateRandomNumber() {
    final rand = Random();

    final Set<int> newNumbers = {}; //Set쓰면 중복된거 안들어감

    while (newNumbers.length < 3) {
      final randomNumber = rand.nextInt(1000);

      newNumbers.add(randomNumber);
    }

    setState(() {
      numbers = newNumbers.toList();
    });
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

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
          onPressed: () {},
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
            .map((e) => e.toString().split(''))
            .map(
              (e) =>
              Row(
                children: e
                    .map(
                      (number) =>
                      Image.asset(
                        'asset/img/$number.png',
                        width: 50.0,
                        height: 70.0,
                      ),
                )
                    .toList(),
              ),
        )
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
