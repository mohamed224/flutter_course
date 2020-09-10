import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  List<Transaction> transactions = [
    Transaction(id:'t1',title: 'New Shoes', amount: 69.5 , date: DateTime.now()),
    Transaction(id:'t2',title: 'Weekly Groceries', amount: 78.5 , date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: transactions.map((tx) =>
          Card(child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15
                ),
                decoration: BoxDecoration(border: Border.all(color: Colors.purple , width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.purple
                    ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                      DateFormat('yyyy/MM/dd').format(tx.date),
                      style: TextStyle(
                        color: Colors.grey
                      ),
                  )
                ],
              )
            ],
          ),
          )).toList(),),
    );
  }
}

