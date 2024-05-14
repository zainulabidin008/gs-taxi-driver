import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';

class GsTaxiText extends StatelessWidget {
  final String first;
  final String second;
  final String third;
  const GsTaxiText(
      {super.key,
      required this.first,
      required this.second,
      required this.third});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        children: [
          TextSpan(
            text: first,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.px,
                fontStyle: FontStyle.italic,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
          TextSpan(
            text: second,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.px,
                fontStyle: FontStyle.italic,
                color: MyAppColors.secondaryColor,
              ),
            ),
          ),
          TextSpan(
            text: third,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.px,
                fontStyle: FontStyle.italic,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.px,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.px),
          color: MyAppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.px,
                color: MyAppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonRounded extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color color;
  const CustomButtonRounded(
      {super.key,
      required this.title,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(72.px),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.px,
                color: MyAppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AccountCheckText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTap;
  const AccountCheckText(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '',
        children: [
          TextSpan(
            text: firstText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.px,
                color: MyAppColors.subtitle,
              ),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => onTap,
            text: secondText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.px,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const CustomTextFormField(
      {super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.px,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
          isDense: true,
          filled: true,
          hintText: hint,
          hintStyle: GoogleFonts.mulish(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.px),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyAppColors.primaryColor,
              width: 1.px,
            ),
          ),
          fillColor: MyAppColors.greyBlue,
        ),
      ),
    );
  }
}
