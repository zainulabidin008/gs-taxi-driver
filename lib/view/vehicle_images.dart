import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app_colors/app_colors.dart';
import 'bitfurther.dart';
import 'custom_widgets/ride/ride.dart';

class VehicleImagesScreen extends StatelessWidget {
  const VehicleImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Vehicle images',
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload the vehicle images',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Upload clear, relevant images with proper orientation and resolution to facilitate quick verification.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (front Side)',
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (back Side)',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (front Side)',
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (back Side)',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (front Side)',
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'License (back Side)',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                CustomButton(
                    title: 'Upload',
                    onTap: () {
                      Get.to(() => const BitFurtherScreen());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
