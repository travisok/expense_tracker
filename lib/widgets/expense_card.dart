import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatelessWidget {
  double expense;
  final String category;
  final IconData icon;

  ExpenseCard({
    super.key,
    required this.expense,
    required this.category,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦',
      decimalDigits: 2
    );

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF1F3F4),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 0.8,
          color: Color(0xFFe1e3e4)
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF008080),
                //child logo
              ),
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              )
            ),
            SizedBox(height: 15,),
            Text(
              formatter.format(expense),
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black
              ),
            ),
            //SizedBox(height: 5,),
            Text(
              category,
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF008080)
              ),
            ),
          ],
        )
      ),
    );
  }
}