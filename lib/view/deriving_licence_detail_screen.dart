import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app_colors/app_colors.dart';
import 'bitfurther_fields_screen.dart';
import 'custom_widgets/gs_taxi.dart';
import 'custom_widgets/ride/ride.dart';

class DerivingLicenceDetailScreen extends StatelessWidget {
  const DerivingLicenceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Deriving license details',
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
              children: [
                CustomTextFormFieldDriver(
                  title: 'Issuing country',
                ),
                CustomTextFormFieldDriver(
                  title: 'First name',
                ),
                CustomTextFormFieldDriver(
                  title: "Last name",
                ),
                CustomTextFormFieldDriver(
                  title: "Driver's license number...",
                ),
                CustomTextFormFieldDriver(
                  title: 'Issue date...',
                ),
                CustomTextFormFieldDriver(
                  title: 'Issue date...',
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      'Upload the license images',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
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
                SizedBox(height: 2.h),
                CustomLicenceImagePicker(
                  width: Get.width / 2.2,
                  title: 'Selfie License',
                ),
                SizedBox(height: 3.h),
                CustomButton(
                  title: 'Upload',
                  onTap: () {
                    Get.to(() => JustBitFurtherFieldsScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
