import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                              color: Color(0xFFD1D1D1),
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
                        child: Container(
                          height:110,
                          decoration: BoxDecoration(
                            color: Color(0xFFA0FFFF),
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ),
                      SizedBox(width: 17.5),
                      Expanded(
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFFA0FFFF),
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      ),
                    ],
                  )
                ]
              ),
            )
          ],
        )
    );
  }
}

