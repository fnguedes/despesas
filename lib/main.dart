import 'package:despesas/components/transaction_form.dart';
import 'package:despesas/components/transaction_user.dart';
import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:despesas/components/transaction_form.dart';
import 'package:despesas/components/transaction_list.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _transaction = [
    Transaction(id: '1', title: 'privada', value: 500, date: DateTime.now()),
    Transaction(id: '2', title: 'casa0', value: 453, date: DateTime.now()),
    Transaction(id: '2', title: 'casa1', value: 453, date: DateTime.now()),
    Transaction(id: '2', title: 'casa2', value: 453, date: DateTime.now()),
    Transaction(id: '2', title: 'casa3', value: 453, date: DateTime.now()),
    Transaction(id: '2', title: 'casa4', value: 453, date: DateTime.now()),
    Transaction(id: '2', title: 'casa5', value: 453, date: DateTime.now()),
  ];

  _opentransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Card(
            elevation: 5,
            color: Colors.blue,
            child: Text('card 1'),
          ),
          TransactionUser(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton(FloatingActionButton(child: Icon(Icons.add)))
    );
  }
}
