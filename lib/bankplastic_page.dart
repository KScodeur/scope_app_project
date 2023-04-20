import 'package:flutter/material.dart';

class BankplasticPage extends StatefulWidget {
  const BankplasticPage({super.key});

  @override
  State<BankplasticPage> createState() => _BankplasticPageState();
}

class _BankplasticPageState extends State<BankplasticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Banque plastiques"),
      ),
    );
  }
}