import 'package:flutter/cupertino.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> _userTransactions = [
    Transaction(id:'t1',title: 'New Shoes', amount: 69.5 , date: DateTime.now()),
    Transaction(id:'t2',title: 'Weekly Groceries', amount: 78.5 , date: DateTime.now())
  ];

  void _addNewTransaction(String titleValue , double amountValue){
    final newTx = Transaction(id:DateTime.now().toString(),title:titleValue,amount:amountValue,date:DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
