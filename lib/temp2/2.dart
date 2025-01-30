import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = await initializeDatabase();
  runApp(FixedDepositApp(database: database));
}

// Database Initialization
Future<Database> initializeDatabase() async {
  final path = join(await getDatabasesPath(), 'fixed_deposits.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      return db.execute(
        '''
        CREATE TABLE deposits(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          bankName TEXT,
          startDate TEXT,
          endDate TEXT,
          interestRate REAL,
          isTaxExempt INTEGER,
          monthlyIncome REAL
        )
        ''',
      );
    },
    version: 1,
  );
}

// Main App Widget
class FixedDepositApp extends StatelessWidget {
  final Database database;

  const FixedDepositApp({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '정기예금 관리',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(database: database),
    );
  }
}

// Main Screen
class MainScreen extends StatelessWidget {
  final Database database;

  const MainScreen({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('정기예금 관리'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // 알림 설정 기능
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: database.query('deposits'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
 
          final deposits = snapshot.data!;

          if (deposits.isEmpty) {
            return const Center(child: Text('등록된 정기예금이 없습니다.'));
          }

          return ListView.builder(
            itemCount: deposits.length,
            itemBuilder: (context, index) {
              final deposit = deposits[index];
              return DepositCard(
                deposit: deposit,
                onViewDetails: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountDetailScreen(
                          deposit: deposit, database: database),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEditAccountScreen(database: database),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: '계좌 추가'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
        ],
      ),
    );
  }
}

// Deposit Card
class DepositCard extends StatelessWidget {
  final Map<String, dynamic> deposit;
  final VoidCallback onViewDetails;

  const DepositCard(
      {super.key, required this.deposit, required this.onViewDetails});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(deposit['bankName'],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text('${deposit['startDate']} ~ ${deposit['endDate']}',
                style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            Text('월 이자 수입: ₩${deposit['monthlyIncome']}'),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: onViewDetails,
                child: const Text('상세 보기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Account Detail Screen
class AccountDetailScreen extends StatelessWidget {
  final Map<String, dynamic> deposit;
  final Database database;

  const AccountDetailScreen(
      {super.key, required this.deposit, required this.database});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(deposit['bankName']),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddEditAccountScreen(
                      database: database, deposit: deposit),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              await database.delete('deposits',
                  where: 'id = ?', whereArgs: [deposit['id']]);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('시작일: ${deposit['startDate']}'),
            const SizedBox(height: 8),
            Text('종료일: ${deposit['endDate']}'),
            const SizedBox(height: 8),
            Text('이자율: ${deposit['interestRate']}%'),
            const SizedBox(height: 8),
            Text('비과세 여부: ${deposit['isTaxExempt'] == 1 ? '비과세 적용' : '일반 과세'}'),
            const SizedBox(height: 8),
            Text('월 수익: ₩${deposit['monthlyIncome']}'),
          ],
        ),
      ),
    );
  }
}

// Add/Edit Account Screen
class AddEditAccountScreen extends StatefulWidget {
  final Database database;
  final Map<String, dynamic>? deposit;

  const AddEditAccountScreen({super.key, required this.database, this.deposit});

  @override
  _AddEditAccountScreenState createState() => _AddEditAccountScreenState();
}

class _AddEditAccountScreenState extends State<AddEditAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final _bankNameController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _interestRateController = TextEditingController();
  final _monthlyIncomeController = TextEditingController();
  bool _isTaxExempt = false;

  @override
  void initState() {
    super.initState();
    if (widget.deposit != null) {
      _bankNameController.text = widget.deposit!['bankName'];
      _startDateController.text = widget.deposit!['startDate'];
      _endDateController.text = widget.deposit!['endDate'];
      _interestRateController.text = widget.deposit!['interestRate'].toString();
      _monthlyIncomeController.text =
          widget.deposit!['monthlyIncome'].toString();
      _isTaxExempt = widget.deposit!['isTaxExempt'] == 1;
    }
  }

  Future<void> _saveDeposit() async {
    if (_formKey.currentState!.validate()) {
      final deposit = {
        'bankName': _bankNameController.text,
        'startDate': _startDateController.text,
        'endDate': _endDateController.text,
        'interestRate': double.parse(_interestRateController.text),
        'isTaxExempt': _isTaxExempt ? 1 : 0,
        'monthlyIncome': double.parse(_monthlyIncomeController.text),
      };

      if (widget.deposit == null) {
        await widget.database.insert('deposits', deposit);
      } else {
        await widget.database.update(
          'deposits',
          deposit,
          where: 'id = ?',
          whereArgs: [widget.deposit!['id']],
        );
      }

      // Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.deposit == null ? '계좌 추가' : '계좌 수정')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _bankNameController,
                decoration: const InputDecoration(labelText: '은행명'),
                validator: (value) => value!.isEmpty ? '은행명을 입력하세요.' : null,
              ),
              TextFormField(
                controller: _startDateController,
                decoration: const InputDecoration(labelText: '시작일'),
              ),
              TextFormField(
                controller: _endDateController,
                decoration: const InputDecoration(labelText: '종료일'),
              ),
              TextFormField(
                controller: _interestRateController,
                decoration: const InputDecoration(labelText: '이자율 (%)'),
              ),
              SwitchListTile(
                title: const Text('비과세 여부'),
                value: _isTaxExempt,
                onChanged: (value) => setState(() => _isTaxExempt = value),
              ),
              ElevatedButton(onPressed: _saveDeposit, child: const Text('저장')),
            ],
          ),
        ),
      ),
    );
  }
}
