import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddExpense extends StatelessWidget {
  const AddExpense ({super.key});

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // title: Text(
        //   textAlign: TextAlign.center,
        //   'Add new expense',
        //   style: GoogleFonts.inter(
        //     fontSize: 17,
        //     fontWeight: FontWeight.w500,
        //     color: Colors.black
        //   ),
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xFF00CCCC),
            )
          ],
        ),
      ),
    );
  }
}