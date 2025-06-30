import 'package:flutter/material.dart';
import 'package:flutter_application_budget/models/expenses.dart';
import 'package:flutter_application_budget/widgets/expemses_list/expesnses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
