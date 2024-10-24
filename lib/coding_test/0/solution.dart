// ignore_for_file: avoid_print

import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

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

  // 문자 리스트를 열로 변환하기
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

  // /주사 게임 2
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

  //수 하기
  int solution33(int n, String control) {
    int answer = n;
    for (var i = 0; i < control.length; i++) {
      var index = control[i];
      if (index == 'w') {
        answer++;
      }
      if (index == 's') {
        answer--;
      }
      if (index == 'd') {
        answer += 10;
      }
      if (index == 'a') {
        answer -= 10;
      }
    }
    print(answer);
    return answer;
  }

  //수 조작하기2 *** 못품
  String solution34(List<int> numLog) {
    String answer = '';
    print(numLog);
    for (int i = 1; i < numLog.length; i++) {
      int diff = numLog[i] - numLog[i - 1];
      switch (diff) {
        case 1:
          answer += 'w';
          break;
        case -1:
          answer += 's';
          break;
        case 10:
          answer += 'd';
          break;
        case -10:
          answer += 'a';
          break;
      }
    }
    print(answer);
    return answer;
  }

  String solution34_1(List<int> numLog) {
    String answer = '';
    for (var i = 1; i < numLog.length; i++) {
      var difIndex = numLog[i] - numLog[i - 1];
      switch (difIndex) {
        case 1:
          answer += 'w';
          break;
        case -1:
          answer += 's';
          break;
        case 10:
          answer += 'd';
          break;
        case -10:
          answer += 'a';
          break;
      }
    }
    print('wri');
    print(answer);
    return answer;
  }

  // 이거
  void solution34_2(List<int> numLog) {
    String answer = '';
    for (var i = 1; i < numLog.length; i++) {
      var diff = (numLog[i] - numLog[i - 1]);
      (diff == 1)
          ? answer += 'w'
          : diff == -1
              ? answer += 's'
              : diff == 10
                  ? answer += 'd'
                  : diff == -10
                      ? answer += 'a'
                      : null;
    }
    print('*****');
    print(answer);
  }

  // 나머지 구하기
  int solution35(int num1, int num2) {
    int answer = (num1 % num2);
    return answer;
  }

  //숫자 비교하기
  int solution36(int num1, int num2) {
    return (num1 == num2) ? 1 : -1;
  }

  // 몫 구하기
  int solution37(int num1, int num2) {
    return num1 ~/ num2;
    // ~/ 몫의 소숫점을 버림
  }

  //두 수의 나눗셈
  int solution38(int num1, int num2) {
    double s1 = num1 / num2;
    print((s1 * 1000).toInt());
    return (s1 * 1000).toInt();
  }

  //각도기
  int solution39(int angle) {
    var result = 0;
    // if 는 모든 조건 검사
    // else if 문은 앞에서 참일경우 뒤에 조건 검사X
    if (0 < angle && angle < 90) {
      result = 1;
    } else if (angle == 90) {
      result = 2;
    } else if (90 < angle && angle < 180) {
      result = 3;
    } else if (angle == 180) {
      result = 4;
    }
    return result;
  }

  int solution39_1(int angle) {
    if (angle < 90) return 1;
    if (angle == 90) return 2;
    if (angle < 180) return 3;
    return 4;
  }

  //짝수의 합
  int solution40(int n) {
    //   var answer = 0;
    // for (var i = 2; i <= n; i += 2) {
    //   answer += i;
    // }
    var answer = (n ~/ 2) * (n ~/ 2 + 1);
    print(answer);
    return answer;
  }

  int solution41(int num1, int num2) {
    return num1 + num2;
  }

  List<int> solution42(List<int> numList) {
    int even = 0;
    int odd = 0;
    List<int> result = [];
    for (var nl in numList) {
      (nl % 2 == 0) ? even += 1 : odd += 1;
    }
    result = [even, odd];
    print(result);
    return result;
  }

  int solution43(List<int> array, int n) {
    int answer = 0;
    for (var index in array) {
      if (index == n) answer++;
    }
    print(answer);
    return answer;
  }

  int solution44(List<int> array, int height) {
    int answer = 0;
    for (var element in array) {
      if (element > height) answer++;
    }
    return answer;
  }

  List<int> solution45(List<int> numbers) {
    List<int> answer = [];
    for (var element in numbers) {
      answer += [element * 2];
    }
    print(answer);
    return answer;
  }

  int solution46(int n) {
    // for (var i = 1; i * i <= n; i++) {
    //   if (i * i == n) {
    //     return 1;
    //   }
    // }
    // return 2;

    for (var i = 1; i < n; i++) {
      if (n == (i * i)) return 1;
    }
    return 2;
  }

  int solution47(List<int> array) {
    int answer = 0;
    int centerVal = array.length ~/ 2;
    array.sort();
    for (var i = 0; i <= centerVal; i++) {
      answer = array[i].toInt();
    }
    return answer;
  }

  int solution47_1(List<int> array) {
    array.sort();
    return array[array.length ~/ 2];
  }

  List<int> solution48(int n) {
    List<int> answer = [];
    for (var i = 1; i <= n; i++) {
      if ((i % 2) == 1) answer += [i];
    }
    print(answer);
    return answer;
  }

  int solution49(int n) {
    double answer = 0;
    if (n <= 7) {
      answer++;
    } else {
      answer = n / 7;
      if (answer % 1 != 0) {
        answer++;
      }
    }
    print(answer.toInt());
    return answer.toInt();
  }

  List<int> solution51(List<int> numList) {
    List<int> answer = [];
    for (var i = numList.length - 1; i >= 0; i--) {
      answer.add(numList[i]);
      if (i == 0) break;
    }
    print(answer);
    return answer;
  }

  int solution52(List<int> sides) {
    int max = 0;
    int mid = 0;
    int min = 0;

    if (sides[0] >= sides[1] && sides[0] >= sides[1]) {
      max = sides[0];
      mid = sides[1] >= sides[2] ? sides[1] : sides[2];
      min = sides[1] > sides[2] ? sides[2] : sides[1];
    } else if (sides[1] >= sides[0] && sides[1] >= sides[2]) {
      max = sides[1];
      mid = sides[0] >= sides[2] ? sides[0] : sides[2];
      min = sides[0] > sides[2] ? sides[2] : sides[0];
    } else if (sides[2] >= sides[0] && sides[2] >= sides[0]) {
      max = sides[2];
      mid = sides[0] >= sides[1] ? sides[0] : sides[1];
      min = sides[0] > sides[1] ? sides[1] : sides[0];
    }
    print('max : $max  /mid : $mid  /min : $min');
    print((max < (mid + min)) ? 1 : 2);
    return (max < (mid + min)) ? 1 : 2;
  }

  int solution52_2(List<int> sides) {
    int a = sides[0];
    int b = sides[1];
    int c = sides[2];

    int max = a;
    if (b > max) {
      max = b;
    }
    if (c > max) {
      max = c;
    }

    int sum = a + b + c;
    int otherTwo = sum - max;

    if (otherTwo > max) {
      return 1;
    } else {
      return 2;
    }
  }

  int solution52_1(List<int> sides) {
    sides.sort(); // 리스트를 오름차순으로 정렬
    return sides[0] + sides[1] > sides[2] ? 1 : 2;
  }

  int solution53(int price) {
    int answer = 0;
    double fivePercentage = 0.95;
    double tenPercentage = 0.90;
    double twentyPercentage = 0.80;

    (price >= 500000)
        ? answer = (price * twentyPercentage).toInt()
        : (price >= 300000)
            ? answer = (price * tenPercentage).toInt()
            : (price >= 100000)
                ? answer = (price * fivePercentage).toInt()
                : answer = price;
    print(answer);
    return answer;
  }

  List<int> solution54(int money) {
    List<int> answer = [];
    int iceCoffe = 5500;
    answer.add(money ~/ iceCoffe);
    answer.add((money % iceCoffe));
    print(answer);
    return answer;
  }

  List<int> solution54_1(int money) {
    int iceCoffe = 5500;
    print([money ~/ iceCoffe, money % iceCoffe]);
    return [money ~/ iceCoffe, money % iceCoffe];
  }

  int solution55(String myString) {
    int answer = 0;
    for (var i = 0; i < myString.length; i++) {
      var num = int.tryParse(myString[i]);
      if (num != null) {
        answer += num;
      }
    }
    print(answer);
    return answer;
  }

  String solution56(String myString) {
    String answer = '';

    for (var element in myString.split('')) {
      if (element == element.toLowerCase()) {
        answer += element.toUpperCase();
      } else if (element == element.toUpperCase()) {
        answer += element.toLowerCase();
      }
    }
    print(answer);
    return answer;
  }

  int solution57(String message) {
    int answer = 0;
    for (var element in message.split('')) {
      answer += 2;
    }
    print(answer);
    return answer;
  }

  double solution58(List<int> numbers) {
    var result = 0;
    for (var element in numbers) {
      result += element;
    }
    print(result / numbers.length);
    return result / numbers.length;
  }

  int solution59(int n, int t) {
    int answer = 0;
    for (var i = 0; i < t; i++) {
      if (answer != 0) {
        answer = answer * 2;
      } else {
        answer = n * 2;
      }
    }
    print(answer);
    return answer;
  }

  int solution59_1(int n, int t) {
    int answer = n;
    for (var i = 0; i < t; i++) {
      answer *= n;
    }
    print(answer);
    return answer;
  }

  List<int> solution60(List<int> array) {
    List<int> answer = [];
    var max = 0;
    for (var i = 0; i < array.length - 1; i++) {
      max = array[i];
      answer = [array[i], i];
      if (max < array[i + 1]) {
        answer = [array[i + 1], i + 1];
      }
    }
    print(answer);
    return answer;
  }

  List<int> solution61(int n, List<int> numlist) {
    List<int> answer = [];
    for (var element in numlist) {
      (element % n == 0) ? answer.add(element) : null;
    }
    print(answer);
    return answer;
  }

  List<int> solution62(List<int> arr, int k) {
    List<int> answer = [];
    for (var element in arr) {
      if (k % 2 == 0) {
        answer.add(element + k);
      } else {
        answer.add(element * k);
      }
    }
    print(answer);
    return answer;
  }

  List<int> solution63(List<int> numbers, int num1, int num2) {
    List<int> answer = [];
    for (var i = num1; i <= num2; i++) {
      answer.add(numbers[i]);
    }
    print(answer);
    return answer;
  }

  List<int> solution63_1(List<int> numbers, int num1, int num2) {
    List<int> answer = [];
    answer = numbers.sublist(num1, num2 + 1);
    print(answer);
    return answer;
  }

  String solution64(String myString, String letter) {
    String answer = '';
    for (var element in myString.split('')) {
      letter != element ? answer += element : null;
    }
    print(answer);
    return answer;
  }

  //꼬리 문자열 추천 못품**
  String solution65(List<String> strList, String ex) {
    String answer = '';
    var cnt = 0;
    for (var element in strList) {
      var index = element;
      if (ex.length == 1) {
        for (var element in index.split('')) {
          if (element != ex) {
            cnt++;
          }
          if (cnt == 3) print(answer += element);
        }
      } else {
        for (var i = 0; i < index.length - 2; i++) {
          var sIndex = (index.substring(i, (ex.length + i)));
          var sIndex1 = (index.substring(i + 1, (ex.length + i + 1)));
          if (sIndex != ex && sIndex1 != ex) {
            answer += index;
          }
        }
      }
    }
    // print(answer);
    return answer;
  }

  String solution65_1(List<String> strList, String ex) {
    String answer = '';
    var index = '';
    var cnt = 0;

    for (var i = 0; i < strList.length; i++) {
      index = strList[i];
      for (var j = 0; j < index.length; j++) {
        if (ex.length == 1) {
          if (index[j] != ex[0]) {
            cnt++;
            print(cnt);
          }
          if (cnt == index.length) {
            answer += index;
            // print(answer);
          }
        } else if (ex.length == 2) {
          if (index[j] != ex[1]) {
            answer += index;
          }
        } else if (ex.length == 3) {
          if (index[j] != ex[2]) {
            answer += index;
          }
        } else if (ex.length == 4) {
          if (index[j] != ex[3]) {
            answer += index;
          }
        } else if (ex.length == 5) {
          if (index[j] != ex[4]) {
            answer += index;
          }
        }
      }
    }
    // print(answer);
    return answer;
    // 원시적인 방법으로 풀수 없다고 판단 해서 매서드 사용하기로 함
  }

  String solution65_2(List<String> strList, String ex) {
    String answer = '';
    for (var element in strList) {
      if (element.contains(ex) != true) {
        answer += element;
      }
    }
    print(answer);
    return answer;
  }

  String solution65_3(List<String> strList, String ex) {
    String answer = '';
    for (var element in strList) {
      bool found = false; // ex가 element에 포함되었는지 확인하는 변수
      for (var i = 0; i <= element.length - ex.length; i++) {
        // element의 각 위치에 대해 반복
        bool match = true; // ex와 일치하는지 확인하는 변수
        for (var j = 0; j < ex.length; j++) {
          // ex의 각 문자에 대해 반복
          if (element[i + j] != ex[j]) {
            // 일치하지 않으면
            match = false; // match를 false로 설정
            break; // 더 이상 반복할 필요 없음
          }
        }
        if (match) {
          // ex가 발견된 경우
          found = true; // found를 true로 설정
          break; // 더 이상 반복할 필요 없음
        }
      }
      if (!found) {
        // ex가 발견되지 않은 경우
        answer += element; // element를 answer에 추가
      }
    }
    print(answer);
    return answer;
  }

  String solution66(String myString) {
    String answer = '';
    for (var i = myString.length - 1; i >= 0; i--) {
      answer += myString[i];
    }
    print(answer);
    return answer;
  }

  String solution67(int n) {
    return n.toString();
  }

  int solution68(List<int> numList, int n) {
    int answer = 0;
    for (var element in numList) {
      if (element == n) {
        answer = 1;
        break;
      }
      answer = 0;
    }
    return answer;
  }

  int solution69(String nStr) {
    return int.parse(nStr);
  }

  int solution70(int n, int k) {
    int answer = 0;
    int sheepNiku = (12000 * n);
    int allCoke = (k * 2000);

    int disCoke = (sheepNiku ~/ 120000) * 2000;

    // print(coke);
    if (disCoke >= 2000) {
      answer += allCoke - disCoke;
      answer += sheepNiku;
    } else {
      answer += sheepNiku;
      answer += allCoke;
    }
    print(answer);
    return answer;
  }

  int solution71(double flo) {
    return flo ~/ 1;
  }

  String solution72(String rsp) {
    String answer = '';
    for (var i = 0; i < rsp.length; i++) {
      if (rsp[i] == '2') {
        answer += '0';
      } else if (rsp[i] == '0') {
        answer += '5';
      } else if (rsp[i] == '5') {
        answer += '2';
      }
    }
    // print(answer);
    return answer;
  }

  int solution73(List<int> numList) {
    int odd = 0;
    int even = 0;

    print(numList.length);

    for (var i = 1; i < numList.length; i += 2) {
      even += numList[i];
    }
    for (var i = 0; i < numList.length; i += 2) {
      odd += numList[i];
    }

    print('odd : $odd');
    print('even : $even');
    return (odd > even) ? odd : even;
  }

  void solution74() {
    int n = int.parse(stdin.readLineSync()!);
    List<String> strList = [
      '*',
      '**',
      '***',
      '****',
      '*****',
      '******',
      '*******',
      '********',
      '*********',
      '**********'
    ];
    for (var i = 0; i < n; i++) {
      print(strList[i]);
    }
  }

  int solution75(List<String> s1, List<String> s2) {
    int answer = 0;
    for (var element in s1) {
      for (var i = 0; i < s2.length; i++) {
        // print(s2[i]);
        if (element == s2[i]) {
          answer++;
        }
      }
    }
    // print(answer);
    return answer;
  }

  int solution76(int hp) {
    int answer = 0;

    int generalAntVal = hp ~/ 5;
    int generalAntRemainder = hp % 5;

    int soldierAntVal = generalAntRemainder ~/ 3;
    int soldierAntRemainder = generalAntRemainder % 3;

    int workerAntVal = soldierAntRemainder ~/ 1;
    int workerAntRemainder = 0;

    print(generalAntVal + soldierAntVal + workerAntVal);
    return generalAntVal + soldierAntVal + workerAntVal;
  }

  int solution76_1(int hp) {
    return (hp ~/ 5) + ((hp % 5) ~/ 3) + (((hp % 5) % 3) ~/ 1);
  }

  List<int> solution77(List<String> strlist) {
    List<int> answer = [];
    for (var element in strlist) {
      answer.add(element.length);
    }
    print(answer);
    return answer;
  }

  int solution78(List<int> numbers) {
    int max = -100000000;

    for (var i = 0; i < numbers.length; i++) {
      for (var j = (i + 1); j < numbers.length - 1; j++) {
        int num = numbers[i] * numbers[j];
        if (num >= max) {
          max = num;
        }
      }
    }
    print(max);
    return max;
  }

  int solution78_(List<int> numbers) {
    int max = numbers[0] * numbers[1]; // 초기값을 첫 두 원소의 곱으로 설정

    for (var i = 0; i < numbers.length; i++) {
      for (var j = (i + 1); j < numbers.length; j++) {
        // j의 조건을 수정
        int num = numbers[i] * numbers[j];
        if (num > max) {
          // max보다 큰 경우에만 업데이트
          max = num;
        }
      }
    }
    print(max);
    return max;
  }

  int solution79(String str1, String str2) {
    return str1.contains(str2) ? 1 : 2;
  }

  List<int> solution80(int n) {
    List<int> answer = [];
    for (var i = 1; i <= n; i++) {
      if (n % i == 0) answer.add(i);
    }
    print(answer);
    return answer;
  }

  int solution81(List<int> box, int n) {
    int width = box[0];
    int depth = box[1];
    int height = box[2];

    // int widthVal = width ~/ n;
    // int depthVal = depth ~/ n;
    // int heightVal = height ~/ n;
    int widthVal = 0;
    int depthVal = 0;
    int heightVal = 0;

    if (1 <= n && n <= 50) {
      if (width >= n) {
        for (var i = n; i <= width; i += n) {
          widthVal += 1;
        }
      }
      if (depth >= n) {
        for (var i = n; i <= depth; i += n) {
          depthVal += 1;
        }
      }
      if (height >= n) {
        for (var i = n; i <= height; i += n) {
          heightVal += 1;
        }
      }
    }
    print(widthVal * depthVal * heightVal);
    return widthVal * depthVal * heightVal;
  }

  int solution81_1(List<int> box, int n) {
    int width = box[0] ~/ n;
    int depth = box[1] ~/ n;
    int height = box[2] ~/ n;

    print(width * depth * height);
    return width * depth * height;
  }

  int solution82(int a, int b) {
    int answer = 0;

    if (a % 2 != 0 && b % 2 != 0) {
      answer = (a * a) + (b * b);
    } else if (a % 2 != 0 || b % 2 != 0) {
      answer = 2 * (a + b);
    } else {
      answer = a - b;
    }
    if (answer < 0) answer *= -1;

    return answer;
  }

  String solution83(String nStr) {
    int cnt = 0;
    for (var element in nStr.split('')) {
      if (element == '0') {
        cnt++;
      } else {
        break;
      }
    }
    print(nStr.substring(cnt));
    return nStr.substring(cnt);
  }

  int solution84(String str1, String str2) {
    return str2.contains(str1) ? 1 : 0;
  }

  String solution85(String myString) {
    return myString.toLowerCase();
  }

  String solution86(String myString) {
    return myString.toUpperCase();
  }

  List<String> solution87(List<String> strArr) {
    List<String> answer = [];
    for (var i = 0; i < strArr.length; i++) {
      if ((i == 0) || (i % 2 == 0)) {
        answer.add(strArr[i].toLowerCase());
      } else {
        answer.add(strArr[i].toUpperCase());
      }
    }
    return answer;
  }

  int solution88(String myString, String target) {
    return myString.contains(target) ? 1 : 0;
  }

  int solution88_1(String myString, String target) {
    int result = 0;
    for (var i = 0; i < (myString.length - target.length); i++) {
      if (myString.substring(i, i + target.length) == target) {
        result = 1;
      }
    }
    return result;
  }

  int solution89(String numStr) {
    int answer = 0;
    for (var element in numStr.split("")) {
      answer += int.parse(element);
    }
    print(answer);
    return answer;
  }

  List<int> solution90(List<int> numList) {
    List<int> answer = [];
    numList.sort();
    for (var i = 5; i < numList.length; i++) {
      answer.add(numList[i]);
    }
    // print(answer);
    // 역순정렬
    // answer.sort(
    //   (a, b) => b.compareTo(a),
    // );
    print(answer);
    return answer;
  }

  List<int> solution91(List<int> numList) {
    List<int> answer = [];
    numList.sort();
    for (var i = 0; i < 5; i++) {
      answer.add(numList[i]);
    }
    // print(answer);
    return answer;
  }

  List<int> solution91_1(List<int> numList) {
    // numList를 오름차순으로 정렬합니다.
    numList.sort();
    // 정렬된 리스트에서 처음 5개의 요소를 가져와 리스트로 변환하여 반환합니다.
    return numList.take(5).toList();
    // 정렬된 리스트에서 뒤에서 5개의 요소를 가져와 리스트로 변환하여 반환합니다.
    // return numList.reversed.take(5).toList();
  }

  List<int> solution92(List<int> arr, int n) {
    List<int> answer = [];
    int length = arr.length;
    if (length % 2 == 0) {
      for (var i = 0; i < arr.length; i++) {
        if (i % 2 != 0) {
          answer.add(arr[i] + n);
        } else {
          answer.add(arr[i]);
        }
      }
    } else {
      for (var i = 0; i < arr.length; i++) {
        if (i % 2 == 0) {
          answer.add(arr[i] + n);
        } else {
          answer.add(arr[i]);
        }
      }
    }
    return answer;
  }

  int solution93(List<int> arr1, List<int> arr2) {
    int answer = 0;
    int length1 = arr1.length;
    int length2 = arr2.length;

    int arrVar1 = 0;
    int arrVar2 = 0;

    // arrVar1 > arrVar2 ? 1 : 0;

    if (length1 != length2) {
      (length1 > length2)
          ? answer = 1
          : (length1 < length2)
              ? answer = -1
              : 0;
    } else if (length1 == length2) {
      for (var i = 0; i < length1; i++) {
        arrVar1 += arr1[i];
        arrVar2 += arr2[i];
      }
      (arrVar1 > arrVar2)
          ? answer = 1
          : (arrVar1 < arrVar2)
              ? answer = -1
              : 0;
    }
    print(answer);
    return answer;
  }

  String solution94(String myString) {
    String answer = '';
    for (var element in myString.split('')) {
      if (element == 'a' || element == 'A') {
        answer += element.toUpperCase();
      } else {
        answer += element.toLowerCase();
      }
    }
    print(answer);
    return answer;
  }

  List<int> solution95(int startNum, int endNum) {
    List<int> answer = [];
    for (var i = startNum; i >= endNum; i--) {
      answer.add(i);
    }
    return answer;
  }

  List<int> solution96(List<int> arr) {
    List<int> answer = [];

    for (var element in arr) {
      for (var i = 0; i < element; i++) {
        answer.add(element);
      }
    }
    return answer;
  }
}
