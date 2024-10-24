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

  List<int> numList = [5, 2, 1, 7, 5];
  print(numList.length);
  // var lastVal = numList[numList.length];
  // var minusoneVal = numList[numList.length - 1];

  print('----');
  Solution().solution33(0, 'wsdawsdassw');

  print('----3434----3434----3434----3434----3434');
  Solution().solution34([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]);
  Solution().solution34([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]);
  Solution().solution34_1([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]);
  Solution().solution34_2([0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]);

  Solution().solution38(3, 2);
  Solution().solution38(7, 3);
  Solution().solution38(3, 16);

  Solution().solution40(10);
  Solution().solution40(4);

  Solution().solution42([1, 2, 3, 4, 5]);
  Solution().solution42([1, 3, 5, 7]);

  print('===================================');
  Solution().solution43([1, 1, 2, 3, 4, 5], 1);
  Solution().solution43([0, 2, 3, 4], 1);

  Solution().solution45([1, 2, 3, 4, 5]);
  Solution().solution45([1, 2, 100, -99, 1, 2, 3]);

  Solution().solution46(144);

  Solution().solution48(10);
  Solution().solution48(15);

  Solution().solution49(7);
  Solution().solution49(1);
  Solution().solution49(2);
  Solution().solution49(3);
  Solution().solution49(4);
  Solution().solution49(5);
  Solution().solution49(6);
  Solution().solution49(15);

  print('배열뒤집기ds');
  Solution().solution51([1, 2, 3, 4, 5]);
  Solution().solution51([1, 1, 1, 1, 1, 2]);
  Solution().solution51([1, 0, 1, 1, 1, 3, 5]);

  Solution().solution52([1, 2, 3]);
  Solution().solution52([3, 6, 2]);
  Solution().solution52([199, 72, 222]);

  Solution().solution53(150000);
  Solution().solution53(580000);
  Solution().solution53(88000);

  Solution().solution54(5500);
  Solution().solution54(15000);
  Solution().solution54_1(5500);
  Solution().solution54_1(15000);

  Solution().solution55('aAb1B2cC34oOp');
  Solution().solution55('1a2b3c4d123');

  Solution().solution56('cccCCC');
  Solution().solution56('abCdEfghIJ');

  Solution().solution57('happy birthday!');
  Solution().solution57('I love you~');

  Solution().solution58([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  Solution().solution58([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]);

  Solution().solution59(2, 10);
  Solution().solution59(7, 15);

  Solution().solution59_1(2, 10);
  Solution().solution59_1(7, 15);

  Solution().solution60([1, 8, 3]);
  Solution().solution60([9, 10, 11, 8]);

  Solution().solution61(3, [4, 5, 6, 7, 8, 9, 10, 11, 12]);
  Solution().solution61(5, [1, 9, 3, 10, 13, 5]);
  Solution().solution61(12, [2, 100, 120, 600, 12, 12]);

  Solution().solution62([1, 2, 3, 100, 99, 98], 3);
  Solution().solution62([1, 2, 3, 100, 99, 98], 2);

  Solution().solution63([1, 2, 3, 4, 5], 1, 3);
  Solution().solution63([1, 3, 5], 1, 2);

  Solution().solution63_1([1, 2, 3, 4, 5], 1, 3);
  Solution().solution63_1([1, 3, 5], 1, 2);

  Solution().solution64('abcdef', 'f');
  Solution().solution64('BCBdbe', 'B');

  Solution().solution65(["abc", "def", "ghi"], 'ef');
  Solution().solution65(["abc", "bbc", "cbc"], 'c');

  Solution().solution66('jaron');
  Solution().solution66('bread');

  Solution().solution70(10, 3);
  Solution().solution70(64, 6);

  print('Rock Siser Paper');
  Solution().solution72('2');
  Solution().solution72('205');

  Solution().solution73([4, 2, 6, 1, 7, 6]);
  Solution().solution73([-1, 2, 5, 6, 3]);

  Solution().solution65_2(["abc", "def", "ghi"], 'ef');
  Solution().solution65_2(["abc", "bbc", "cbc"], 'c');

  print("************************************");

  Solution().solution65_3(["abc", "def", "ghi"], 'ef');
  Solution().solution65_3(["abc", "bbc", "cbc"], 'c');
  //잔디테스트
  //잔디테스트2

  Solution().solution75(["a", "b", "c"], ["com", "b", "d", "p", "c"]);
  Solution().solution75(["n", "omg"], ["m", "dot"]);

  Solution().solution76(23);
  Solution().solution76(24);
  Solution().solution76(999);

  Solution().solution77(["We", "are", "the", "world!"]);
  Solution().solution77(["I", "Love", "Programmers."]);

  Solution().solution78_([1, 2, -3, 4, -5]);
  Solution().solution78_([0, -31, 24, 10, 1, 9]);
  Solution().solution78_([10, 20, 30, 5, 5, 20, 5]);
  Solution().solution78_([10000, -10000]);

  print(Solution().solution79('ab6CDE443fgh22iJKlmn1o', '6CD'));
  print(Solution().solution79('ppprrrogrammers', 'pppp'));
  print(Solution().solution79('AbcAbcA', 'AAA'));

  Solution().solution80(24);
  Solution().solution80(29);

  Solution().solution81([1, 1, 1], 1);
  Solution().solution81([10, 8, 6], 3);
  Solution().solution81_1([1, 1, 1], 1);
  Solution().solution81_1([10, 8, 6], 3);

  Solution().solution82(3, 5);
  Solution().solution82(6, 1);
  Solution().solution82(2, 4);

  Solution().solution83('0010');
  Solution().solution83('854020');

  print(Solution().solution84('abc', 'aabcc'));
  print(Solution().solution84('tbt', 'tbbttb'));

  Solution().solution87(["AAA", "BBB", "CCC", "DDD"]);
  Solution().solution87(["aBc", "AbC"]);
  print('---------------------------------------');
  Solution().solution88_1("banana", "ana");
  Solution().solution88_1("banana", "wxyz");

  Solution().solution89("123456789");
  Solution().solution89("1000000");

  Solution().solution90([12, 4, 15, 46, 38, 1, 14, 56, 32, 10]);
  print('---------------------------------------');
  print(Solution().solution91_1([12, 4, 15, 46, 38, 1, 14]));

  Solution().solution92([49, 12, 100, 276, 33], 27);
  Solution().solution92([444, 555, 666, 777], 100);

  print('------------------ 배열비교하기 ------------------');
  Solution().solution93([49, 13], [70, 11, 2]);
  Solution().solution93([100, 17, 84, 1], [55, 12, 65, 36]);
  Solution().solution93([1, 2, 3, 4, 5], [3, 3, 3, 3, 3]);

  Solution().solution94("abstract algebra");
  Solution().solution94('PrOgRaMmErS');

  print(Solution().solution95(10, 3));
}
