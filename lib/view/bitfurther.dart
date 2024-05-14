import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:gs_taxi/view/request_pending_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app_colors/app_colors.dart';
import 'custom_widgets/ride/ride.dart';

class BitFurtherScreen extends StatelessWidget {
  const BitFurtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Just a bit further.',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: Column(
            children: [
              Text(
                "You're almost ready to start receiving trip requests.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.px,
                    color: MyAppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              CustomFurtherTile(
                title: 'Add License details',
                achieve: true.obs,
                arrowIcon: false.obs,
              ),
              CustomFurtherTile(
                title: 'Add vehicle document details',
                achieve: true.obs,
                arrowIcon: false.obs,
              ),
              CustomFurtherTile(
                title: 'Upload vehicle photos',
                achieve: true.obs,
                arrowIcon: false.obs,
              ),
              // SizedBox(height: 40.h),
              const Spacer(),
              CustomButton(
                  title: 'Submit request',
                  onTap: () {
                    Get.to(() => RequestPendingScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
