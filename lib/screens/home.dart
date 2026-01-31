import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/expense_card.dart';

class Home extends StatelessWidget {

  const Home ({super.key});

  @override Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 65, 25, 0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    // height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xFF008080),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(17.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monthly Summary',
                            style: GoogleFonts.inter(
                              fontSize: 11.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 23,),
                          Text(
                            'Total:',
                            style: GoogleFonts.inter(
                              fontSize: 17.5,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 29,),
                          Container(
                            height: 33.5,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F3F4),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child: Text(
                                'Pay now',
                                style: GoogleFonts.inter(
                                  fontSize: 14.5,
                                  color: Color(0xFF008080),
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                  SizedBox(height: 17.5),
                  Row(
                    children: [
                      Expanded(
                          child: ExpenseCard(
                            expense: 3200,
                            category: 'Food',
                            icon: Icons.fastfood,
                          )
                      ),
                      SizedBox(width: 17.5),
                      Expanded(
                        child: ExpenseCard(
                          expense: 300,
                          category: 'Transportation',
                          icon: Icons.local_taxi,
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 17.5,),
                  Row(
                    children: [
                      Expanded(
                          child: ExpenseCard(
                            expense: 1000,
                            category: 'Recreation',
                            icon: Icons.beach_access,
                          )
                      ),
                      SizedBox(width: 17.5),
                      Expanded(
                          child: ExpenseCard(
                            expense: 1700,
                            category: 'Health Care',
                            icon: Icons.medical_services
                          )
                      ),
                    ],
                  ),
                ]
              ),
            )
          ],
        )
    );
  }
}

