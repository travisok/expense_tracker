import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home ({super.key});

  @override Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFF008080),
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFFA0FFFF),
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFFA0FFFF),
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                    ],
                  )
                ]
              ),
            )
          ],
        )
      )
    );
  }
}