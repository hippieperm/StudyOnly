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

  Solution().solution17(98,2);
  Solution().solution17(34, 3);
}
