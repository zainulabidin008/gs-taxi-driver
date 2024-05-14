import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/vehicle_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'app_colors/app_colors.dart';
import 'custom_widgets/gs_taxi.dart';
import 'custom_widgets/ride/ride.dart';

class JustBitFurtherFieldsScreen extends StatelessWidget {
  const JustBitFurtherFieldsScreen({super.key});

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                CustomTextFormFieldDriver(
                  title: "Last name",
                ),
                CustomTextFormFieldDriver(
                  title: "Last name",
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormFieldDriver(
                        title: "Last name",
                      ),
                    ),
                    SizedBox(width: 2.8.h),
                    Expanded(
                      child: CustomTextFormFieldDriver(
                        title: "Last name",
                      ),
                    ),
                  ],
                ),
                CustomTextFormFieldDriver(
                  title: "Last name",
                ),
                Row(
                  children: [
                    Text(
                      'Upload the vehicle document images',
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
                        title: "Vehicle document\n(front side)",
                      ),
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    Expanded(
                      child: CustomLicenceImagePicker(
                        title: 'Vehicle document\n(back side)',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                CustomButton(
                  title: 'Upload',
                  onTap: () {
                    Get.to(() => VehicleImagesScreen());
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
