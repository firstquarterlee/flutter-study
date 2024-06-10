import 'package:flutter/material.dart';

enum Status {
  approved, //승인
  pending,  //대기
  rejected, //거절
}

//signature -> 리턴타입과 파라미터 형태를 시그니처라함
typedef Operation = int Function(int x, int y, int z);
//더하기
int add(int x, int y, int z) => x + y + z;
//빼기
int subtract(int x, int y, int z) => x - y - z;
//계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}

void main() {
  ///정수
  ///Integer
  // int number1 = 10;
  // print(number1);
  // int number1 = 2;
  // int number2 = 4;
  // print(number1 + number2);
  ///======================
  ///실수
  ///Double
  // double number1 = 2.5;
  // double number2 = 0.5;
  // print(number1 + number2);
  ///======================
  ///맞다 / 틀린다
  ///Boolean
  // bool isTrue = true;
  // bool isFalse = false;
  // print(isTrue);
  ///======================
  ///글자 타입
  ///String
  // String name = '레드벨벳';
  // String name2 = '코드';
  // print(name);
  // print(name2)
  ///======================
  ///var String
  // var name3 = '블랙핑크'; //-> 이러면 자동으로 오른쪽 값을 보고 타입을 유추했음
  // var number = 20;
  // print(name3.runtimeType); //타입알려줌
  //직접 String 이렇게 명시해줘야 코드가 몇만줄이 넘으면 가독성이 좋음
  //var name3 = '블랙핑크"; ->이렇게하면 유추해야되서 가독성이 떨어짐
  ///======================
  ///글자 덧셈
  // String name = '레드벨벳';
  // String name2 = '슬기';
  // print(name + name2);
  // print(name + ' ' + name2);
  // //'${}' 이렇게도 변수를 넣을 수 있음
  // print('${name} ${name2}');
  // print('${name.runtimeType} ${name2}'); //이건 함수까지 가능
  // //'$ 이것도 가능
  // print('$name $name2');
  // print('$name.runtimeType $name2'); //이건 함수 불가능
  ///======================
  ///dynamic 타입
  // dynamic name = '코드';
  // print(name);
  // dynamic number = 1;
  // print(number);
  // var name2 = '블랙핑크';
  // print(name2);
  // name = true; //dynamic은 처음에 스트링으로 변수선언해도 나중에 다른 타입으로 바꿔도 에러가 안난다.
  // //name2 = 5; //하지만 var는 다른 먼저 선언했던 타입이랑 다르면 에러를 낸다.
  ///======================
  ///nullable(null이 될 수 있다.), non-nullable(null이 될 수 없다.)
  ///null(아무런 값도 있지 않다.)
  // String name = '코드';
  // print(name);
  // String? name2 = '블랙핑크';
  // name2 = null;
  // //print(name2);
  // print(name2!); // !를 붙이면 name2는 null이 절대 아니다 라는 뜻 (?와 반대다)
  //                // 현재 이값은 null이 아니다!라는 뜻
  //                // null이 들어갈 수 있는 타입에다가 이렇게 !를 붙이면 현재 이값은 null이 아니다라는 걸 의미한다
  // //우리가 배운 타입에는 2가지가 있다.
  // //선언한 타입만 들어가는거랑 선언한 타입과 Null이 들어가는 것.
  // //선언한 타입 뒤에 ?를 붙이면 선언한 타입과 Null이 들어간다.
  ///======================
  ///final, const
  // final String name = '코딩';
  // print(name);
  // //name = '딩코'; //final로 선언하면 값을 변경할 수 없다.
  // const String name2 = '딩코';
  // print(name2);
  //name2 = '코딩;' //const로 선언하면 값을 변경할 수 없다.
  //final, const쓰면 type도 생략 가능하다. ex) final String name = '코딩'; -> final name = '코딩';
  // final DateTime now = DateTime.now();
  // print(now);
  // //빌드타임 : run누르면 이 코드를 컴퓨터가 이해할 수 있는 101010 이진수로 바뀌는데 그 때를 빌드타임!
  // const DateTime now = DateTime.now();
  // print(now);
  // 결론 -> final같은 경우는 우리가 빌드타임의 값을 몰라도 되고 const같은 경우는 절대적으로 빌드 타임의 값을 알아야한다.
  ///======================
  ///Operator(덧셈, 뺄셈, 나눗셈 등등을 포함한 추가적인 기능들...)
  // int number = 2;
  // print(number);
  // print(number % 2); //나누고 나서 나머지
  // number ++; //number에다가 1이 더해짐 : //3
  // print(number);
  // number --;
  // print(number); //++해서 number 3이였는데 --해서 -기되서 2나옴 //2
  // double number = 4.0;
  // print(number);
  // number += 1; //+= 플러스이퀄하면 내가 원하는 숫자만큼 더하고서 저장할 수 있다.
  // print(number);
  // number -= 1;
  // print(number);
  // number *= 2;
  // print(number);
  // number /= 2;
  // print(number);
  ///======================
  ///null조건 operator(??=)
  // double? number = 4.0; //double?는 더블도 들어가고 null도 들어가는거 알지? yes
  // print(number);
  // number ??= 3.0; //number가 만약에 null이면 오른쪽 값으로 바꿔라
  // //-> 그래서 우리가 null이 아닐때는 이 오른쪽 값으로 바꾸지 않고 null일때만 이렇게 오른쪽 값으로 바라는 그런 오퍼레이터다.
  // print(number);
  ///======================
  ///비교 Operator
  // int number1 = 1;
  // int number2 = 2;
  // print(number1 > number2); //f
  // print(number1 < number2); //t
  // print(number1 >= number2);//f
  // print(number1 <= number2);//t
  // print(number1 == number2);//f
  // print(number1 != number2);//t
  ///======================
  ///타입비교 Operator(is)
  // int number1 = 1;
  // //타입 비교하려면 is를 써라
  // print(number1 is int); //number1이 int타입이냐? //true
  // print(number1 is String);
  //
  // print(number1 is! int); //!는 반대
  // print(number1 is! String);
  ///======================
  ///논리 Operator
  /// &&조건(and) ||조건(or)
  ///======================
  ///List(리스트)
  ///여러개의 값들을 하나의 list로 저장할 수 있는 것
  //List<String> blabla = ['블라', '블라', '블라']; //대문자로 시작한다는점!!  <> -> 이건 제네릭
  // List<String> blackPink = ['제니', '지수', '로제', '리사'];
  // List<int> numbers = [1, 2, 3, 4, 5]; //타입 꼭 지키기
  // print(blackPink);
  // print(numbers);
  // //index -> 순서임, 모든 index는 0부터 시작함
  // print(blackPink[0]); //List는 index를 사용하여 요소를 가져옴!!!
  // print(blackPink[1]);
  // print(blackPink[2]);
  // print(blackPink.length); //.하면 List클래스에 있는거 모든걸(함수) 사용할 수 있다.
  // //길이는 0부터 시작하지않는다!!! 1부터 시작!! 사람이 세는것처럼 센다
  // blackPink.add('리쌍'); //추가하고싶을때
  // print(blackPink);
  // blackPink.remove('리쌍'); //지우고싶을때
  // print(blackPink);
  // print(blackPink.indexOf('로제')); //indexOf로 값의 인덱스를 가지고 오고 싶을때!
  ///======================
  ///Map(맵)
  //Key / Value
  //맵은 꼭 짝을 이룬다.
  //맵은 항상 key를 갖고서 value 값을 찾는데 사용한다.
  // Map<String, String> dictionary = { //Map<타입, 타입> -> 키벨류니까 타입 2개정해야됨
  //   'Harry Potter': '해리포터',
  //   'Ron Weasley': '론 위즐리',
  //   'Hermione Granger': '헤르미온느 그레인저',
  // };
  // print(dictionary);
  // Map<String, bool> isHarryPotter = { //Map<타입, 타입> -> 키벨류니까 타입 2개정해야됨
  //   'Harry Potter': true,
  //   'Ron Weasley': false,
  // };
  // print(isHarryPotter);
  // isHarryPotter.addAll({ //addAll하면 map에 추가하는 방법이다. //중괄호안에 들어있는걸 다 추가해줌
  //   'Spiderman': false,
  // });
  // print(isHarryPotter);
  // print(dictionary['Harry Potter']); //키에 해당하는 벨류 값을 가져오는 방법
  // //반대로 벨류에 대한 키값은 못가져온다!! 항상 이 데이터 구조는 Key에 해당되는 Value값을 가져오는게 원칙이다.
  // isHarryPotter['Hulk'] = false; //맵에 추가하는 방법
  // print(isHarryPotter); //키 헐크, 벨류 false 추가됨
  // isHarryPotter['Spiderman'] = true; //벨류 바꾸는 방법
  // print(isHarryPotter); //벨류 true로 바뀜
  // isHarryPotter.remove('Harry Potter'); //키, 값 지우는 방법
  // print(isHarryPotter);
  // print(isHarryPotter.keys); //키값만 가져오는 것
  // print(isHarryPotter.values); //벨류값만 가져오는 것
  ///======================
  ///Set
  // final Set<String> names = {
  //   'Coding',
  //   'Flutter',
  //   'Black Pink',
  //   'Flutter', //Flutter가 중복인데 프린트하면 중복처리를 알아서 해줌 set은ㅋ
  // };
  // print(names);
  // names.add('Jenny');
  // print(names);
  // print(names.contains('Flutter'));//어떤 값이 이 셋에 존재하는지 안하는지 알 수 있다. //true
  ///======================
  ///if문
  // int number = 3;
  // if (number % 2 == 0) {
  //   //넘버를 2로 나눠서 나머지가 0이면 짝수!!! 당연히 짝수
  //   print('값이 짝수입니다.');
  // } else {
  //   print('값이 홀수입니다.');
  // }
  ///else if문
  //  int number = 3;
  // if (number % 3 == 0) {
  //   print('나머지가 0입니다.');
  // } else if (number % 3 == 1) {
  //   print('나머지가 1입니다.');
  // } else {
  //   print('나머지가 2입니다.');
  // }
  ///swich문
  // int number = 3;
  // switch(number % 3) {
  //   case 0:
  //     print('나머지가 0입니다.');
  //     break; //switch는 break 꼭 있어야함
  //   case 1:
  //     print('나머지가 1입니다.');
  //     break;
  //   default: //default가 if문에서의 else와 똑같다.
  //     print('나머지가 2입니다.');
  //     break;
  // }
  ///loop문(for)
  // for (int i = 0; i < 10; i++){
  //     //변수선언    //언제까지 조건설정해주고    //마지막 룹이 실행될때마다 어떤 액션 할지
  //   print(i);
  // }
  // int total = 0;
  // List<int> numbers = [1, 2, 3, 4, 5, 6];
  // for (int i = 0; i < numbers.length; i++) {
  //   total += numbers[i];
  //   print(total);
  // }
  ///for in loop문
  // total = 0;
  // for (int number in numbers) { //in 옆에 numbers의 리스트를 int number여기에 하나씩 넣어준다.
  //   total += number;
  //   print(total);
  //   //print(number);
  //   //그래서 number에 리스트에있는것들을 하나씩 받아올수있다.
  // }
  ///while loop문
  // int total = 0;
  // while(total < 10) {
  //   total += 1;
  // }
  // print(total);
  //
  // //do while문 -> 거의 안쓴다.
  // total = 0;
  // do {
  //   total += 1;
  // } while(total < 10);
  // print(total);

  //while문에서 쓰기 좋은 break문
  // int total = 0;
  // while(total < 10) {
  //   total += 1;
  //
  //   if(total == 5) {
  //     break;
  //   }
  // }
  // print(total);

  // 이렇게 쓸 수도있음
  // for(int i = 0; i < 10; i++) {
  //   total += 1;
  //   if(total == 5) {
  //     break;
  //   }
  //   print(total);
  // }
  ///continue
  // for (int i = 0; i < 10; i++) {
  //   if (i == 5) { //i가 5되면 현재룹 종료, 건너띄고 다시 루프 돈다.
  //     continue;
  //   }
  //   print(i);
  // }
  ///======================
  ///enum -> 메인 함수 위에 선언해줬음!
  ///이넘을 쓰면 몇가지 타입만 있을때 그 타입만 사용할 수 있게 강제할 수 있다!!!
  // Status status = Status.pending;
  //
  // if(status == Status.approved) {
  //   print('승인입니다.');
  // } else if (status == Status.pending) {
  //   print('대기입니다.');
  // } else {
  //   print('거절입니다.');
  // }
  ///======================
  ///함수
  ///반복되는 로직, 반복되는 코드를 우리가 한번만 작성하고서 재활용할수있게 해준다.
  //세계의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
  // addNumbers(int x, int y, int z) {
  //   int sum = x + y + z;
  //   print('x : $x');
  //   print('y : $y');
  //   print('z : $z');
  //
  //   if (sum % 2 == 0) {
  //     print('짝수입니다.');
  //   } else {
  //     print('홀수입니다.');
  //   }
  // }
  //
  // addNumbers(10, 20, 30);
  // addNumbers(20, 30, 10);

  ///parameter - 매개변수
  ///positional parameter - 순서가 중요한 파라미터

  ///optional parameter - 있어도 되고 없어도 되는 파라미터
  //   addNumbers(int x, [int y = 20, int z = 30]) { //근데 아규먼트에 값을 넣으면 기본값이 무시가된다!!!
  //     int sum = x + y + z;
  //     print('x : $x');
  //     print('y : $y');
  //     print('z : $z');
  //
  //     if (sum % 2 == 0) {
  //       print('짝수입니다.');
  //     } else {
  //       print('홀수입니다.');
  //     }
  //   }
  //
  //   addNumbers(10, 3, 3);
  //   addNumbers(20, 2, 2);

  /// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
  //    addNumbers({
//      required int x, //네임드파라미터는 required라고 적어줘야된다. required 뜻 -> 필요하다.
//      required int y,
//      int z = 30, //네임드파라미터에서는 옵셔널파라미터를 할 수 있을까? 있다. //네임드파라미터는 required안적으면 필요가 없다라고 인식하는게 디폴트다.
//    }) {
//         int sum = x + y + z;
//         print('x : $x');
//         print('y : $y');
//         print('z : $z');
//
//         if (sum % 2 == 0) {
//           print('짝수입니다.');
//         } else {
//           print('홀수입니다.');
//         }
//       }
//
//       addNumbers(y: 20, x: 10, z: 30);
//       addNumbers(x: 10, y: 40);
// }
  ///======================
  ///void란? void 뜻 공허, 아무것도없다라는 뜻!
  //얘가 무슨 말이냐면 return 타입이라는건데ㅋ
  //void로 하면 아무것도 반환 받을 수 없다 반환하려면 에러가 난다.
  //그래서 int addNUmbers(){}하고 함수 안에다가 return sum; 하면 값을 반환할 수 있다.
  //👆여기다 지금까지 배웠던 타입들 다 적을 수 있따!!
  //그리고 옵셔널파라미터, 네임드파라미터 같이 사용할 수 도 있다!
  ///======================
  ///arrow function -> 화살표 함수
  // int addNumbers(int x,  {
  //   required int y,
  //   int z = 30,
  // }) => x + y + z;
  //     //arrow를 적으면 바로 다음에 오는 값이 반환되는 값이다.
  ///======================
  ///TypeDef? ,,,,,맨위에 선언했음
  ///함수랑 비슷한데 바디가 없다.
  // Operation operation = add;
  // int result = operation(10, 20, 30);
  // print(result);
  //
  // operation = subtract;
  //
  // int result2 = operation(10, 20, 30);
  // print(result2);
  //
  // int result3 = calculate(30, 40, 50, add);
  // print(result3);
  //
  // int result4 = calculate(40, 50, 60, subtract);
  // print(result4);
}
