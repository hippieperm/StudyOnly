// ignore_for_file: avoid_print

import 'solution.dart';

void main() {
  print(Solution().solution('aaaa', 'bbbb'));

  print(Solution().solution1(['a', 'b', 'c', 'd']));

  print(Solution().solution2('str', 3));

  print(Solution().solution3(7));
  print(Solution().solution3(10));

  print(Solution().solution4('ProgrammerS123', 11));
  print(Solution().solution4('He110W0r1d', 5));
  print(Solution().solution4_1('ProgrammerS123', 11));
  print(Solution().solution4_1('He110W0r1d', 5));

  //접미사
  print('---------------접미사---------------');
  print(Solution().solution5('banana', 'ana'));
  print(Solution().solution5('banana', 'nan'));
  print(Solution().solution5('banana', 'wxyz'));
  print(Solution().solution5('banana', 'abanana'));

  print(Solution().solution6(40));
  print(Solution().solution6(23));

  print(Solution().solution7(3, 4));
  print(Solution().solution7(27, 19));

  // Solution().solution11();
  Solution().solution12();
  Solution().solution13();
  Solution().solution14();

  Solution().solution15();

  Solution().solution16(100);
  Solution().solution16(1);

  Solution().solution17(98, 2);
  Solution().solution17(34, 3);

  print('---------------연산비교 테스트---------------');
  Solution().solution19(2, 91);
  Solution().solution19(91, 2);
  Solution().solution19(2, 91);
  Solution().solution19(91, 2);

  print('---------------문자열 겹쳐쓰기---------------');
  String myString = 'He11oWor1d';
  String overwriteString = 'lloWorl';
  int s = 2;
  // print('${myString.substring(0, s)}$overwriteString');
  String answer = '${myString.substring(0, s)}$overwriteString';
  answer += myString.substring(answer.length);
  print(answer);

  print(
    myString.substring(0, s) +
        overwriteString +
        myString.substring(s + overwriteString.length),
  );

  int number = 60;
  int n = 2;
  int m = 3;
  print((number % n == 0 && number % m == 0) ? 1 : 0);

  print('---------------조건 문자열---------------');
  Solution().solution23('<', '=', 20, 50);
  Solution().solution23('>', '!', 41, 78);

  Solution().solution26([3, 4, 5, 2, 1]);
  Solution().solution26([5, 7, 8, 3]);

  Solution().solution27(3, 10);

  print(2 - 3);
}
