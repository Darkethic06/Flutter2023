import 'package:flutter/material.dart';
import 'package:koushik/pages/home.dart';
import 'package:koushik/pages/login.dart';
import 'package:koushik/pages/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Koushik',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WalletPage(),
    );
  }
}
