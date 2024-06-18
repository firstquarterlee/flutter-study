import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//인스턴스는 생성할때마다 프로그램은 다르다고 인식한다. 하지만 const라고 적으면 같다고 인식한다?
//게터세터를 왜 사용하나? 함수써도되는데...? 함수는 로직을 처리할때 사용하고, 게터세터는 간단한 값을 바꿀때 사용하는 차이가 있다.

///Idol class 만들기
//name (이름) - 변수
//members (멤버들) - 변수
//sayHello (인사) - 함수
//introduce (멤버소개) - 함수

//constructor (생성자)
//immutable 프로그래밍 -> 한번 선언하면 바꿀 수 없게 만들어놓은 프로그래밍
// class Idol {
//   final String name = '블랙핑크'; //name (이름) - 변수
//   final List<String> members = ['지수', '제니', '리사', '로제']; //members (멤버들) - 변수
//
//   void sayHello() {
//     //sayHello (인사) - 함수
//     print('안녕하세요 ${this.name}입니다.');
//   }
//
//   void introduce() {
//     print('저희 멤버는 ${this.members}가 있습니다.');
//   }
//
//   //네임드 컨스트럭트 만들기
//   Idol.fromList(List values)
//       : this.members = values[0],
//         this.name = values[1];

//생성자 만들기
//네임드파라미터, 포지셔널파라미터 둘다 사용가능
///포지셔널파라미터 컨스터럭터⬇
// Idol(String name, List<String> members)
//     : this.name = name,
//       this.members = members;
// Idol(this.name,
//     this.members); //위에처럼 길게 안써도되고 이렇게 변경해도된다. //기본컨스터럭터(클래스이름이랑 똑같이 작성한 것)라고 부른다.
///네임드파라미터 컨스터런터⬇
// Idol.fromList(List values)
//     : this.members = values[0],
//       this.name = values[1];
//}

// void main() {
//   Idol blackPink = new Idol(
//     //dart언어에서는 new 붙이나 없으나 똑같다. new Idol(), Idol()
//     '블랙핑크',
//     ['지수', '제니', '리사', '로제'],
//   );
//   //blackPink.name = '차은우'; -> final 키워드를 사용해서 에러가 난다.
//   print(blackPink.name);
//   print(blackPink.members);
//   blackPink.sayHello();
//   blackPink.introduce();

//asIs
// Idol bts = new Idol(
//   'BTS',
//   ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국'],
// );

//toBe -> Idol인스턴스를 네임드컨스트럭트로 만들 수 있다.
// Idol bts = Idol.fromList(
//   [
//     ['RM', '진', '슈가', '제이홈', '지민', '뷔', '정국'],
//     'BTS',
//   ]
// );
//
// print(bts.name);
// print(bts.members);
// bts.sayHello();
// bts.introduce();
//}
///getter -> 데이터 가져올때, setter -> 데이터 설정할때
// class Idol {
//   String name;
//   List<String> members;
//
//   Idol(this.name, this.members);
//
//   Idol.fromList(List values)
//       : this.members = values[0],
//         this.name = values[1];
//
//   void sayHello() {
//     print('안녕하세요 ${this.name}입니다.');
//   }
//
//   void introduce() {
//     print('저희 멤버는 ${this.members}가 있습니다.');
//   }
//
//   //geter -> 값을 가져오는 것.
//   String get firstMember { //스트링을 리턴해주는 게터다 라는 뜻.
//     return this.members[0];
//   }
//
//   //setter -> 이거는 세터랑 반대되는 개념, 파라미터에 꼭 한개만 들어감(법칙임)
//   // set firstMember(String name) {
//   //   this.members[0] = name;
//   // } -> 세터는 현대에서 잘 안쓴다 그래서 주석!
// }
//
// void main() {
//   Idol blackPink = Idol(
//     '블랙핑크',
//     ['지수', '제니', '리사', '로제'],
//   );
//
//   Idol bts = Idol.fromList([
//     ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
//     'BTS',
//   ]);
//
//   print(blackPink.firstMember); //게터로 값 뽑아냄
//   print(bts.firstMember);       //게터로 값 뽑아냄

//blackPink.firstMember = '코딩'; //세터로 값 바꿔줌, 그리고 여기가 한개라서 세터 파라미터에 넣는곳에 한개만 들어감
//bts.firstMember = '아이언맨';    //세터로 값 바꿔줌

//print(blackPink.firstMember); //세터로 값 바꾸고 프린트 찍어봄
//print(bts.firstMember);       //세터로 값 바꾸고 프린트 찍어봄
//}

// 언더스코어(_)를 클래스, 변수, 함수 앞에다가 적으면 private속성이 된다!!!
// ex) class _Idol, void _sayHello(){} _members;
///Inheritance 상속
//상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
//
// void main() {
//   print('------Idol------');
//   Idol apink = new Idol(name: '에이핑크', membersCount: 5); //Idol클래스로 인스턴스 만듬
//
//   apink.sayName();
//   apink.sayMemberscount();
//
//   print('------BoyGroup------');
//   BoyGroup bts = BoyGroup('BTS', 7);
//
//   bts.sayMemberscount();
//   bts.sayName();
//
//   print('------Gril Group------');
//   GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
//
//   redVelvet.sayMemberscount();
//   redVelvet.sayName();
//
//   print('------Type Comparison------');
//   print(apink is Idol); //true
//   print(apink is BoyGroup); //false -> false인 이유 자식클래스들이니깐!
//   print(apink is GirlGroup); //false -> false인 이유 자식클래스들이니깐!
//
//   print('------Type Comparison2------');
//   print(bts is Idol); //true
//   print(bts is BoyGroup); //true
//   print(bts is GirlGroup); //false
//
//   print('------Type Comparison3------');
//   print(redVelvet is Idol); //true
//   print(redVelvet is BoyGroup); //true
//   print(redVelvet is GirlGroup); //false
// }
//
// class Idol {
//   //이름
//   String name;
//   //멤버 숫자
//   int membersCount;
//
//   Idol({ //컨스터럭처(생성자) 만듬, 네임드파라미터로
//     required this.name,
//     required this.membersCount,
//   });
//
//   void sayName() {
//     print('저는 ${this.name}입니다.');
//   }
//
//   void sayMemberscount() {
//     print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
//   }
// }
//
// class BoyGroup extends Idol { //extends 쓰면 상속 받을 수 있음 // extends Idol이 부모클래스, class BoyGroup가 자식클래스
//   BoyGroup( //포지셔널파라미터로 컨스터럭처(생성자)만듬
//     String name,
//     int membersCount,
//   ) : super( //super라고하면 Idol 부모클래스임 //super는 부모클래스를 지칭하는것임
//           name: name,
//           membersCount: membersCount,
//         );
// }
//
// class GirlGroup extends Idol {
//   GirlGroup(
//       String name,
//       int membersCount,
//       ): super(name: name, membersCount: membersCount);
// }
//정리 -> 상속을 하면 자식클래스들은 부모클래스꺼를 상속받는데 자식클래스에서 생긴건 부모클래스로 못올린다! ㅇㅋ?, 또 같은 자식끼리도 공유하지 않는다.
///메소드 오버라이딩
//method - function (class 내부에 있는 함수)
//override - 덮어쓴다(우선시하다)
// void main() {
//   TimesTwo tt = TimesTwo(2);
//
//   print(tt.calculate());
//
//   TimesFour tf = TimesFour(2);
//   print(tf.calculate());
// }
//
// class TimesTwo {
//   final int number;
//
//   TimesTwo( //생성자 만듬
//     this.number, //포지셔널파라미터
//   );
//
//   //method
//   int calculate() { //메소드만듬
//     int number = 3;
//     return this.number * 2;
//   }
// }
//
// class TimesFour extends TimesTwo { //오버라이드는 상속했을때만 사용할 수 있다.
//   TimesFour(
//       int number,
//   ) : super(number);
//
//   @override
//   int calculate() {
//     return super.calculate() * 2;
//   }
// }
///static 😮‍💨
// void main() {
//   Employee seulgi = Employee('슬기');
//   Employee chorong = Employee('초롱');
//   Employee jenny = Employee('제니');
//
//   seulgi.name = '코딩';
//   seulgi.printNameAndBuilding();
//   chorong.printNameAndBuilding();
//
//   Employee.building = '오투타워';
//
//   seulgi.printNameAndBuilding();
//   chorong.printNameAndBuilding();
//   jenny.printNameAndBuilding();
//
//   Employee.printBuilding();
//
// }
//
// class Employee {
//   //static은 instance에 귀속되지 않고 class에 귀속된다.
//   //알바생이 일하고있는 건물
//   static String? building;
//   //알바생 이름
//   String name;
//
//   Employee(this.name,);
//
//   void printNameAndBuilding() {
//     print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
//   }
//
//   static void printBuilding() {
//     print('저희는 $building 건물에서 근무중입니다.');
//   }
// }
///Interface 😮‍💨
// void main() {
//   BoyGroup bts = BoyGroup('BTS');
//   GirlGroup redVelvet = GirlGroup('레드벨벳');
//
//   bts.sayName();
//   redVelvet.sayName();
//
//   print(bts is IdolInterface);
//
// }
//
// //interface
// abstract class IdolInterface { //abstract가 써져 있으면은 얘는 우리가 Instance로 만들 때 사용을 하지마라 라는 의미!
//   String name;
//
//   IdolInterface(this.name);
//
//   void sayName() {}
// }
//
// class BoyGroup implements IdolInterface {
//   String name;
//
//   BoyGroup(this.name);
//
//   void sayName() {
//     print('제 이름은 $name입니다.');
//   }
// }
//
// class GirlGroup implements IdolInterface {
//   String name;
//
//   GirlGroup(this.name);
//
//   void sayName() {
//     print('제 이름은 $name입니다.');
//   }
// }
// //결론 -> 상속의 경우에는 우리가 속성과 기능들을 물려주기 위해서 사용한다고 생각을 한다면
// //인터페이스 같은 경우에는 어떤 특수한 구조를 이렇게 강제하는 게 인터페이스라고 생각을 하면 된다.
//
// //abstract 추상적인
///generic -> 타입을 외부에서 받을때 사용 😮‍💨
// void main() {
//   Lecture<String> lecture1 = Lecture('123', 'lecture1');
//
//   lecture1.printIdType();
//
//   Lecture<int> lecture2 = Lecture(123, 'lecture2');
//
//   lecture2.printIdType();
// }
//
// class Lecture<T> {
//   final T id;
//   final String name;
//
//   Lecture(this.id, this.name);
//
//   void printIdType() {
//     print(id.runtimeType);
//   }
// }