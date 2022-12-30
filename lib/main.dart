import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title : Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(""),
              TextField(
                decoration: InputDecoration(labelText: '이메일'),
              ),
              TextField(
                decoration: InputDecoration(labelText: '비밀번호'),
                obscureText: true,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('로그인'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
