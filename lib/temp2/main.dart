import 'package:flutter/material.dart';

void main() {
  runApp(const FixedDepositApp());
}

class FixedDepositApp extends StatelessWidget {
  const FixedDepositApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '정기예금 관리',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/details': (context) => const DetailsScreen(),
        '/addEdit': (context) => const AddEditScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('정기예금 관리'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5, // Sample data count
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('은행명 $index',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('2023-01-01 ~ 2024-01-01',
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                  const SizedBox(height: 8),
                  const Text.rich(
                    TextSpan(
                      text: '20',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                      children: [
                        TextSpan(
                          text: '일 남음',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('월 이자 수입: ₩10,000 (세금 포함)',
                      style: TextStyle(fontSize: 14)),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/details');
                      },
                      child: const Text('상세 보기'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addEdit');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '계좌 추가'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.pushNamed(context, '/settings');
          }
        },
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('우리은행'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.pushNamed(context, '/addEdit');
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('시작일: 2023-01-01'),
            const SizedBox(height: 8),
            const Text('종료일: 2024-01-01'),
            const SizedBox(height: 8),
            const Text('이자율: 2.5%'),
            const SizedBox(height: 8),
            const Text('비과세 여부: 비과세 적용'),
            const SizedBox(height: 8),
            const Text('월 수익 (세전/세후): ₩100,000 / ₩80,000'),
            const SizedBox(height: 8),
            const Text('남은 기간: 30일 남음'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/addEdit');
                  },
                  child: const Text('수정하기'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('삭제하기'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddEditScreen extends StatelessWidget {
  const AddEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('계좌 추가/수정')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(decoration: InputDecoration(labelText: '은행명')),
            TextField(
              decoration: const InputDecoration(labelText: '시작일'),
              onTap: () {},
            ),
            TextField(
              decoration: const InputDecoration(labelText: '종료일'),
              onTap: () {},
            ),
            const TextField(
              decoration: InputDecoration(labelText: '이자율'),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('비과세 여부'),
                Switch(value: false, onChanged: (value) {}),
              ],
            ),
            Slider(
              value: 15,
              min: 0,
              max: 50,
              divisions: 10,
              label: '15%',
              onChanged: (value) {},
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Center(child: Text('저장')),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('설정')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              items: [7, 14, 30]
                  .map((e) => DropdownMenuItem(value: e, child: Text('$e일 전')))
                  .toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: '알림 주기 설정'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: '기본 세율 설정'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('데이터 초기화'),
            ),
          ],
        ),
      ),
    );
  }
}
