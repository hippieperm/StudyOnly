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

  //접미사인지 확인하기
  // int solution5(String myString, String isSuffix) {
  //   int answer = 0;
  //   return answer;
  // }

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
}
