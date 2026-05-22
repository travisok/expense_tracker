import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

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
    final formatter = NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦',
      decimalDigits: 2
    );

    return TextField(
      controller: controller,
      
      onChanged: (value) {
        if (!isCurrency) return;
        
        String cleaned = value
            .replaceAll('₦', '')
            .replaceAll(',', '');

        if (cleaned.isEmpty) {
          controller.clear();
          return;
        }

        if ('.'.allMatches(cleaned).length > 1) return;

        final number = double.tryParse(cleaned);

        if (number == null) return;

        final formatted = formatter.format(number);

        if (controller.text == formatted) return;

        controller.value = TextEditingValue(
          text: formatted,
          selection: TextSelection.collapsed(offset: formatted.length)
        );
      },

      keyboardType: keyboardType,
      
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