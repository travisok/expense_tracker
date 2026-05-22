import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_input.dart';

class AddExpense extends StatelessWidget {
  final expenseController = TextEditingController();
  final amountController = TextEditingController();

  AddExpense ({super.key,});

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          textAlign: TextAlign.center,
          'Add new expense',
          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Color(0xFF008080)
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
        child: Column(
          children: [
            SizedBox(height: 20,),
            CustomInput(
              hintText: 'Add Expense',
              controller: expenseController,
            ),
            SizedBox(height: 20,),
            CustomInput(
              hintText: 'Amount',
              controller: amountController,
              keyboardType: TextInputType.number,
              isCurrency: true,
            ),
          ],
        ),
      ),
    );
  }
}

