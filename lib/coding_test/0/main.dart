// ig118372ore_for_file: avoid_print

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

  print('------------------ 배열의 원소만큼 추가하기 ------------------');
  Solution().solution96([5, 1, 4]);
  Solution().solution96([6, 6]);
  Solution().solution96([1]);

  Solution().solution97("masterpiece");
  Solution().solution97("programmers");
  Solution().solution97("jerry");
  Solution().solution97("burn");

  Solution().solution98("ABBAA", "AABB");
  Solution().solution98("ABAB", "ABAB");

  Solution().solution99("i love you");
  Solution().solution99("programmers");

  Solution().solution100(" i    love  you");
  Solution().solution100("    programmers  ");

  Solution().solution103([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1]);
  Solution().solution103([2, 3, 4, 5]);

  Solution().solution104([1, 2, 3, 100, 99, 98]);

  Solution().solution113([0, 0, 0, 1], 1);
  Solution().solution113([1, 0, 0, 1, 0, 0], 4);
  Solution().solution113([1, 1, 1, 1, 0], 3);

  Solution().solution115("banana");
  Solution().solution115("programmers");

  Solution().solution116("ProgrammerS123", 11);
  Solution().solution116("He110W0r1d", 5);

  Solution().solution119("abcdevwxyz");
  Solution().solution119("llnnllllmm");

  Solution().solution120("hello", 1, 2);
  Solution().solution120("I love you", 3, 6);

  Solution().solution121("oxooxoxxox");
  Solution().solution121("xabcxdefxghi");

  Solution().solution122("hello", 3);

  Solution().solution123("bus");
  Solution().solution123("nice to meet you");

  print('배열의 원소 삭제하기');
  Solution()
      .solution124([293, 1000, 395, 678, 94], [94, 777, 104, 1000, 1, 12]);
  Solution().solution124([110, 66, 439, 785, 1], [377, 823, 119, 43]);

  Solution().solution123("hello world"); // Expected output: "hll wrld"
  Solution().solution123("dart programming"); // Expected output: "drt prgrmmng"
  Solution().solution123("university"); // Expected output: "nvrsty"
  Solution().solution123("beautiful day"); // Expected output: "btfl dy"
  Solution()
      .solution123("a quick brown fox"); // Expected output: " qck brwn fx"

  // 부분 문자열 이어 붙여 문자열 만들기
  print('부분 문자열 이어 붙여 문자열 만들기');
  Solution().solution117([
    "progressive",
    "hamburger",
    "hammer",
    "ahocorasick"
  ], [
    [0, 4],
    [1, 2],
    [3, 5],
    [7, 7]
  ]);

  Solution().solution125(10, 3); // Expected output: [3, 6, 9]
  Solution().solution125(15, 4); // Expected output: [4, 8, 12]
  Solution().solution125(7, 2); // Expected output: [2, 4, 6]
  Solution().solution125(10, 3); // Expected output: [5, 10, 15]
  Solution().solution125(15, 5); // Expected output: [3, 6],

  print(Solution().solution126([3, 4])); // Expected output: 1
  print(Solution().solution126([-3, 4])); // Expected output: 2
  print(Solution().solution126([-3, -4])); // Expected output: 3
  print(Solution().solution126([3, -4])); // Expected output: 4
  print(Solution().solution126(
      [0, 5])); // Expected output: 0 (Assuming point is on the axis)
  print('------------------ 최댓값 만들기(1) ------------------');

  Solution().solution127([3, 5, 1, 7]); // Expected output: 35
  Solution().solution127([10, 20, 30]); // Expected output: 600
  Solution().solution127([-5, -1, -3]); // Expected output: 5
  Solution().solution127([1, 2, 3, 4, 5]); // Expected output: 0
  Solution().solution127([0, 31, 24, 10, 1, 9]); // Expected output: 0

  print(Solution().solution128(123)); // Expected output: 6
  print(Solution().solution128(4567)); // Expected output: 22
  print(Solution().solution128(0)); // Expected output: 0
  print(Solution().solution128(999)); // Expected output: 27
  print(Solution().solution128(10001)); // Expected output: 2

  print('------------------ 순서쌍의 개수 ------------------');
  print(Solution().solution129_1(20));
  print(Solution().solution129_1(100));
  // Expected output: 6

  print(Solution().solution131(3, 10)); // Expected output: 4
  print(Solution().solution131(4, 9)); // Expected output: 3
  print(Solution().solution131(5, 20)); // Expected output: 4
  print(Solution().solution131(7, 10)); // Expected output: 1
  print(Solution().solution131(4, 12)); // Expected output: 1

  print(Solution().solution132(6));
  print(Solution().solution132(10));
  print(Solution().solution132(4));

  print(Solution().solution133(23));
  print(Solution().solution133(51));
  print(Solution().solution133(100));

  Solution().solution135(3);
  Solution().solution135(29423);

  Solution().solution136(["and", "notad", "abcd"]);
  Solution().solution136(["there", "are", "no", "a", "ds"]);

  print(Solution().solution137(29183, 1));
  print(Solution().solution137(232443, 4));
  print(Solution().solution137(123456, 7));

  Solution().solution139("Bcad");
  Solution().solution139("heLLo");
  Solution().solution139("Python");

  Solution().solution140([
    1,
    2,
    3,
    4,
    5
  ], [
    [1, 3],
    [0, 4]
  ]);
  print(Solution().solution140_1([
    1,
    2,
    3,
    4,
    5
  ], [
    [1, 3],
    [0, 4]
  ]));

  Solution().solution141("dfjardstddetckdaccccdegk", 4);
  // Solution().solution141("pfqallllabwaoclk", 2);

  Solution().solution138("43 + 12");
  Solution().solution138("0 - 7777");
  Solution().solution138("40000 * 40000");

  Solution().solution142(10);
  Solution().solution142(15);
  print(Solution().countCompositeNumbers(10));
  print(Solution().countCompositeNumbers(15));

  print('aaaaa');
  Solution().solution144("axbxcxdx");
  Solution().solution144("dxccxbbbxaaaa");

  Solution().solution145("ihrhbakrfpndopljhygc", 4, 2);
  Solution().solution145("programmers", 1, 1);

  Solution().solution145_("ihrhbakrfpndopljhygc", 4, 2);
  Solution().solution145_("programmers", 1, 1);

  Solution().solution146(1, 13, 1);
  Solution().solution146(10, 50, 5);
  Solution().solution146(3, 10, 2);

  Solution().solution147("people");
  Solution().solution147("We are the world");

  print(Solution().solution148([2021, 12, 28], [2021, 12, 29]));
  print(Solution().solution148([1024, 10, 24], [1024, 10, 24]));

  Solution().solution149("banana", "ana");
  Solution().solution149("aaaa", "aa");

  print('########################');
  Solution().solution156(2, 5);
  Solution().solution156(4, 3);
  Solution().solution156(-4, 2);

  print(Solution().solution158("pPoooyY"));
  print(Solution().solution158("Pyy"));

  Solution().solution159(12345);

  Solution().solution161(3);
  Solution().solution161(4);

  print(Solution().solution161_5('초콜릿', 2)); // 초콜릿초콜릿초콜;
  print(Solution().solution161_5('맥북프로', 3)); // 맥북프로맥북프로맥;

  Solution().solution162(3, 5);
  Solution().solution162(3, 3);
  Solution().solution162(5, 3);

  Solution().solution163(118372);

  Solution().solution164([5, 9, 7, 10], 5);
  Solution().solution164([2, 36, 1, 3], 1);
  Solution().solution164([3, 2, 6], 10);

  Solution().solution165(["Jane", "Kim"]);
}
