import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app_colors/app_colors.dart';

class RequestPendingScreen extends StatelessWidget {
  const RequestPendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Request Pending',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.px),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/pending-request.svg'),
            SizedBox(height: 1.h),
            Text(
              "We'll notify you once it's completed.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.px,
                  color: MyAppColors.black,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              "Your request is currently pending verification. Please note that this process typically takes 48 hours. Thank you for your patience.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.px,
                  color: MyAppColors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
