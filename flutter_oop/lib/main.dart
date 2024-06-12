import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Idol class 만들기
//name (이름) - 변수
//members (멤버들) - 변수
//sayHello (인사) - 함수
//introduce (멤버소개) - 함수

//constructor (생성자)
class Idol {
  String name = '블랙핑크'; //name (이름) - 변수
  List<String> members = ['지수', '제니', '리사', '로제']; //members (멤버들) - 변수

  void sayHello() {
    //sayHello (인사) - 함수
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  //생성자 만들기
  //네임드파라미터, 포지셔널파라미터 둘다 사용가능
  ///포지셔널파라미터 컨스터럭터⬇
  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members;
  Idol(this.name,
      this.members); //위에처럼 길게 안써도되고 이렇게 변경해도된다. //기본컨스터럭터(클래스이름이랑 똑같이 작성한 것)라고 부른다.
  ///네임드파라미터 컨스터런터⬇
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];
}

void main() {
  Idol blackPink = new Idol(
    //dart언어에서는 new 붙이나 없으나 똑같다. new Idol(), Idol()
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  Idol bts = new Idol(
    'BTS',
    ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국'],
  );

  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}
