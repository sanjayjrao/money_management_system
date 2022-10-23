import 'package:flutter/material.dart';
import 'package:money_management_system/screens/add_category.dart';
import 'package:money_management_system/screens/add_expenses.dart';
import 'package:money_management_system/screens/add_income.dart';
// import 'package:money_management_system/screens/home.dart';

void add(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) {
      // ignore: unused_local_variable
      Padding btn;
      return SimpleDialog(
        backgroundColor: Colors.green[400],
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.blueGrey, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        children: [
          btn = addBtn(ctx, context, 'Add Income', const AddIncome()),
          btn = addBtn(ctx, context, 'Add Expenses', const AddExpenses()),
          btn = addBtn(ctx, context, 'Add Category', const AddCategory()),
        ],
      );
    },
  );
}

Padding addBtn(BuildContext ctx, context, String pageName, dynamic page) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: RawMaterialButton(
      fillColor: Colors.white60,
      shape: const RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      onPressed: () => {
        Navigator.of(context).pop(),
        Navigator.of(ctx).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        ),
      },
      // value: 2,
      child: Text(
        pageName,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    ),
  );
}
