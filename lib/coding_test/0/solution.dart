// ignore_for_file: avoid_print

import 'dart:io';

class Solution {
  //문자열 섞기
  String solution(String str1, String str2) {
    String answer = '';
    for (int i = 0; i < str1.length; i++) {
      answer += str1[i];
      answer += str2[i];
    }
    return answer;
  }

  // 문자 리스트를 문자열로 변환하기
  String solution1(List<String> arr) {
    String answer = '';
    for (var arrs in arr) {
      answer += arrs;
    }
    return answer;
  }

  //문자열 곱하기
  String solution2(String myString, int k) {
    String answer = '';
    for (var i = 0; i < k; i++) {
      answer += myString;
    }
    return answer;
  }

  //홀짝에 따라 다른 값 반환하기
  int solution3(int n) {
    int answer = 0;
    if (n % 2 == 0) {
      for (var i = 2; i <= n; i += 2) {
        answer += i * i;
      }
      return answer;
    }
    for (var i = 1; i <= n; i += 2) {
      answer += i;
    }
    return answer;
  }

  // 문자열의 앞의 n글자
  String solution4(String myString, int n) {
    String answer = "";
    for (var i = 0; i < n; i++) {
      answer += myString[i];
    }
    return answer;
  }

  //개선된 코드
  String solution4_1(String myString, int n) {
    return myString.substring(0, n);
  }

  // 접미사인지 확인하기
  int solution5(String myString, String isSuffix) {
    int answer = 0;
    for (var i = 0; i < myString.length; i++) {
      final subMyString = myString.substring(i, myString.length);
      if (subMyString == isSuffix) {
        return answer = 1;
      }
    }
    return answer;
  }

  int solution6(int age) {
    int answer = 0;
    if (0 < age && age <= 120) {
      answer = (2022 - age) + 1;
    }
    return answer;
  }

  //두 수의 곱
  int solution7(int num1, int num2) {
    return num1 * num2;
  }

  // 문자열 출력하기
  String solution8(List<String> args) {
    String s1 = stdin.readLineSync()!;
    return s1;
  }

  //문자열 반복해서 출력하기
  void solution10() {
    List<String> input = stdin.readLineSync()!.split(' ');
    String s1 = input[0];
    int a = int.parse(input[1]);
    var i = 0;
    while (i < a) {
      print(s1);
      i++;
    }
  }

  //대소문자 바꿔서 출력하기
  void solution11() {
    // String s1 = stdin.readLineSync()!;
    String s1 = 'aBcDeFg';
    for (var str in s1.split('')) {
      if (str == str.toUpperCase()) {
        print(str.toLowerCase());
      } else {
        print(str.toUpperCase());
      }
    }
  }

  //특수문자 출력하기
  void solution12() {
    print('!@#\$%^&*(\\\'"<>?:;');
  }

  //덧셈식 출력하기
  void solution13() {
    var a = 4;
    var b = 5;
    print('$a + $b = ${a + b}');
  }

  //문자열 붙여서 출력하기
  void solution14() {
    // List<String> input = stdin.readLineSync()!.split(' ');
    List<String> input = ['apple', '', 'banana'];
    String s1 = input[0];
    String s2 = input[2];
    print('$s1$s2');
  }

  //문자열 돌리기,
  void solution15() {
    // String s1 = stdin.readLineSync()!;
    String s1 = 'abcde';
    for (var i = 0; i < s1.length; i++) {
      print(s1[i]);
    }
  }

  //홀짝 구분하기
  void solution16(int input) {
    var a = input;
    if (a % 2 == 0) {
      print('$a is even');
    } else {
      print('$a is odd');
    }
  }

  //n의 배수
  int solution17(int num, int n) {
    int answer = 0;
    if (num % n == 0) {
      return answer = 1;
    }
    return answer;
  }

  // 두 수의 연산값 비교하기
  int solution19(int a, int b) {
    int answer = 0;

    var calInt = int.parse('$a$b');
    var cal2 = 2 * a * b;

    if (calInt > cal2) {
      return calInt;
    }
    if (calInt < cal2) {
      return cal2;
    }
    if (calInt == cal2) {
      answer = calInt;
    }
    return answer;
  }

  //삼항연산자 활용
  int solution19_1(int a, int b) {
    var calInt = int.parse('$a$b');
    var cal2 = 2 * a * b;

    return (calInt >= cal2) ? calInt : cal2;
  }

  //문자열 겹쳐쓰기
  String solution20(String myString, String overwriteString, int s) {
    String answer = "";
    answer = '${myString.substring(0, s)}$overwriteString';
    answer += myString.substring(answer.length);

    return answer;
  }

  //더 크게 합치기
  int solution21(int a, int b) {
    var sum1 = int.parse('$a$b');
    var sum2 = int.parse('$b$a');

    return (sum1 >= sum2) ? sum1 : sum2;
  }

  // 공배수
  int solution22(int number, int n, int m) {
    return (number % n == 0 && number % m == 0) ? 1 : 0;
  }

  // 조건 문자열 ***
  int solution23(String ineq, String eq, int n, int m) {
    if (ineq == '<') {
      return eq == '=' ? (n <= m ? 1 : 0) : (n < m ? 1 : 0);
    } else {
      return eq == '=' ? (n >= m ? 1 : 0) : (n > m ? 1 : 0);
    }
  }

  //flag에 따라 다른 값 반환하기
  int solution24(int a, int b, bool flag) {
    return flag ? (a + b) : (a - b);
  }

  //간단한 논리 연산
  //(x1 ∨ x2) ∧ (x3 ∨ x4) A 모양이 ANd 반대가 OR
  bool solution25(bool x1, bool x2, bool x3, bool x4) {
    return (x1 || x2) && (x3 || x4) ? true : false;
  }

  //이어 붙인 수
  // 다트에서 정상작동 하는데 numList 변수명이 코틀린에서 달라서 실행이 안됨
  int solution26(List<int> numList) {
    String even = '';
    String odd = '';

    for (var num in numList) {
      var strNum = num.toString();
      (num % 2 == 0) ? (even += strNum) : (odd += strNum);
    }
    int intEven = int.parse(even);
    int intOdd = int.parse(odd);
    print(intOdd + intEven);
    return (intOdd + intEven);
  }

  void solution27() {}
  void solution28() {}
  void solution29() {}
  void solution30() {}
  void solution31() {}
  void solution32() {}
  void solution33() {}
  void solution34() {}
  void solution35() {}
  void solution36() {}
  void solution37() {}
  void solution38() {}
  void solution39() {}
  void solution40() {}
  void solution41() {}
  void solution42() {}
  void solution43() {}
  void solution44() {}
  void solution45() {}
  void solution46() {}
  void solution47() {}
  void solution48() {}
  void solution49() {}
  void solution50() {}
  void solution51() {}
  void solution52() {}
  void solution53() {}
  void solution54() {}
  void solution55() {}
  void solution56() {}
  void solution57() {}
  void solution58() {}
  void solution59() {}
  void solution60() {}
  void solution61() {}
  void solution62() {}
  void solution63() {}
  void solution64() {}
  void solution65() {}
  void solution66() {}
  void solution67() {}
  void solution68() {}
  void solution69() {}
  void solution70() {}
  void solution71() {}
  void solution72() {}
  void solution73() {}
  void solution74() {}
  void solution75() {}
  void solution76() {}
  void solution77() {}
  void solution78() {}
  void solution79() {}
  void solution80() {}
  void solution81() {}
  void solution82() {}
  void solution83() {}
  void solution84() {}
  void solution85() {}
  void solution86() {}
  void solution87() {}
  void solution88() {}
  void solution89() {}
  void solution90() {}
  void solution91() {}
  void solution92() {}
  void solution93() {}
  void solution94() {}
  void solution95() {}
  void solution96() {}
  void solution97() {}
  void solution98() {}
  void solution99() {}
  void solution100() {}
  void solution101() {}
  void solution102() {}
  void solution103() {}
  void solution104() {}
  void solution105() {}
  void solution106() {}
  void solution107() {}
  void solution108() {}
  void solution109() {}
  void solution110() {}
  void solution111() {}
  void solution112() {}
  void solution113() {}
  void solution114() {}
  void solution115() {}
  void solution116() {}
  void solution117() {}
  void solution118() {}
  void solution119() {}
  void solution120() {}
  void solution121() {}
  void solution122() {}
  void solution123() {}
  void solution124() {}
  void solution125() {}
  void solution126() {}
  void solution127() {}
  void solution128() {}
  void solution129() {}
  void solution130() {}
  void solution131() {}
  void solution132() {}
  void solution133() {}
  void solution134() {}
  void solution135() {}
  void solution136() {}
  void solution137() {}
  void solution138() {}
  void solution139() {}
  void solution140() {}
  void solution141() {}
  void solution142() {}
  void solution143() {}
  void solution144() {}
  void solution145() {}
  void solution146() {}
  void solution147() {}
  void solution148() {}
  void solution149() {}
  void solution150() {}
  void solution151() {}
  void solution152() {}
  void solution153() {}
  void solution154() {}
  void solution155() {}
  void solution156() {}
  void solution157() {}
  void solution158() {}
  void solution159() {}
  void solution160() {}
  void solution161() {}
  void solution162() {}
  void solution163() {}
  void solution164() {}
  void solution165() {}
  void solution166() {}
  void solution167() {}
  void solution168() {}
  void solution169() {}
  void solution170() {}
  void solution171() {}
  void solution172() {}
  void solution173() {}
  void solution174() {}
  void solution175() {}
  void solution176() {}
  void solution177() {}
  void solution178() {}
  void solution179() {}
  void solution180() {}
  void solution181() {}
  void solution182() {}
  void solution183() {}
  void solution184() {}
  void solution185() {}
  void solution186() {}
  void solution187() {}
  void solution188() {}
  void solution189() {}
  void solution190() {}
  void solution191() {}
  void solution192() {}
  void solution193() {}
  void solution194() {}
  void solution195() {}
  void solution196() {}
  void solution197() {}
  void solution198() {}
  void solution199() {}
  void solution200() {}
  void solution201() {}
  void solution202() {}
  void solution203() {}
  void solution204() {}
  void solution205() {}
  void solution206() {}
  void solution207() {}
  void solution208() {}
  void solution209() {}
  void solution210() {}
  void solution211() {}
  void solution212() {}
  void solution213() {}
  void solution214() {}
  void solution215() {}
  void solution216() {}
  void solution217() {}
  void solution218() {}
  void solution219() {}
  void solution220() {}
  void solution221() {}
  void solution222() {}
  void solution223() {}
  void solution224() {}
  void solution225() {}
  void solution226() {}
  void solution227() {}
  void solution228() {}
  void solution229() {}
  void solution230() {}
  void solution231() {}
  void solution232() {}
  void solution233() {}
  void solution234() {}
  void solution235() {}
  void solution236() {}
  void solution237() {}
  void solution238() {}
  void solution239() {}
  void solution240() {}
  void solution241() {}
  void solution242() {}
  void solution243() {}
  void solution244() {}
  void solution245() {}
  void solution246() {}
  void solution247() {}
  void solution248() {}
  void solution249() {}
  void solution250() {}
  void solution251() {}
  void solution252() {}
  void solution253() {}
  void solution254() {}
  void solution255() {}
  void solution256() {}
  void solution257() {}
  void solution258() {}
  void solution259() {}
  void solution260() {}
  void solution261() {}
  void solution262() {}
  void solution263() {}
  void solution264() {}
  void solution265() {}
  void solution266() {}
  void solution267() {}
  void solution268() {}
  void solution269() {}
  void solution270() {}
  void solution271() {}
  void solution272() {}
  void solution273() {}
  void solution274() {}
  void solution275() {}
  void solution276() {}
  void solution277() {}
  void solution278() {}
  void solution279() {}
  void solution280() {}
  void solution281() {}
  void solution282() {}
  void solution283() {}
  void solution284() {}
  void solution285() {}
  void solution286() {}
  void solution287() {}
  void solution288() {}
  void solution289() {}
  void solution290() {}
  void solution291() {}
  void solution292() {}
  void solution293() {}
  void solution294() {}
  void solution295() {}
  void solution296() {}
  void solution297() {}
  void solution298() {}
  void solution299() {}
  void solution300() {}
}
