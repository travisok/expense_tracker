import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController controller;
  final bool isCurrency;

  CustomInput({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.inputFormatters,
    required this.controller,
    this.isCurrency = false,
});

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: isCurrency
        ? [
            CurrencyTextInputFormatter.currency(
              locale: 'en_NG',
              symbol: '₦',
              decimalDigits: 2
            )
          ]
        : inputFormatters,
      
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color(0xFFFF555555)
        ),

        filled: true,
        fillColor: const Color(0xFFF1F3F4),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFF1F3F4),
            width: 0.8,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFF1F3F4),
            width: 0.8,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFF1F3F4),
            width: 0.8,
          ),
        ),
      ),
    );
  }
}