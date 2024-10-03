class Solution {
  String solution(String str1, String str2) {
    //문자열 섞기
    String answer = '';
    for (int i = 0; i < str1.length; i++) {
      answer += str1[i];
      answer += str2[i];
    }
    return answer;
  }

  String solution1(List<String> arr) {
    // 문자 리스트를 문자열로 변환하기
    String answer = '';
    for (var arrs in arr) {
      answer += arrs;
    }
    return answer;
  }

  String solution2(String myString, int k) {
    //문자열 곱하기
    String answer = '';
    for (var i = 0; i < k; i++) {
      answer += myString;
    }
    return answer;
  }

  int solution3(int n) {
    //홀짝에 따라 다른 값 반환하기
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
}
