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

  //카운트 업
  // for문 초기값 , 조건(참이여야 아래 코드 실행 ***) , 증가값
  List<int> solution27(int startNum, int endNum) {
    List<int> answer = [];
    for (var i = startNum; i <= endNum; i++) {
      answer.add(i);
    }
    print(answer);
    return answer;
  }

  //두 수의 차
  int solution28(int num1, int num2) {
    return (num1 - num2);
  }

  // 등차수열의 특정한 항만 더하기
  // int solution29(int num1, int d, List<bool> included) {
  //   int answer = 0;
  //   int a = num1;
  //   for (bool bool in included) {
  //     if (bool) {
  //       answer += a;
  //     }
  //     a += d;
  //   }
  //   return answer;
  // }

  // /주사위 게임 2
  int solution30(int a, int b, int c) {
    int answer = 0;
    if (a != b && b != c && a != c) {
      answer = (a + b + c);
    }
    if (a == b || b == c || a == c) {
      answer = (a + b + c) * ((a * a) + (b * b) + (c * c));
    }
    if (a == b && b == c) {
      answer = (a + b + c) *
          ((a * a) + (b * b) + (c * c)) *
          ((a * a * a) + (b * b * b) + (c * c * c));
    }
    return answer;
  }

  int solution30_1(int a, int b, int c) {
    int sum = (a + b + c);
    int sqSum = (a * a) + (b * b) + (c * c);
    int cubeSum = (a * a * a) + (b * b * b) + (c * c * c);

    if (a == b && b == c) {
      return sum * sqSum * cubeSum;
    } else if (a == b || b == c || a == c) {
      return sum * sqSum;
    } else {
      return sum;
    }
  }

  //원소들의 곱과 합
  int solution31(List<int> numList) {
    var mix = 1;
    var sum = 0;
    for (var list in numList) {
      sum += list;
      mix *= list;
    }
    return ((sum * sum) > mix) ? 1 : 0;
  }

  List<int> solution32(List<int> numList) {
    final lastVal = numList[numList.length - 1];
    final minusoneVal = numList[numList.length - 2];
    final listInstances =
        lastVal > minusoneVal ? lastVal - minusoneVal : lastVal * 2;

    // 새로운 List<int> 생성
    return [...numList, listInstances];
  }
}
