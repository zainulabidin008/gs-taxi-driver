import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/gs_taxi.dart';
import '../home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.px),
          child: Column(
            children: [
              SizedBox(height: 2.h),
              Text(
                'Basic info',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.px,
                    color: MyAppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              CircleAvatar(
                radius: 50.px,
                child: Image.asset("assets/images/profile-pic.png"),
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Driver ID: ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.px,
                        color: MyAppColors.black,
                      ),
                    ),
                  ),
                  Text(
                    'D5862',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.px,
                        color: MyAppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your name',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h),
              CustomTextFormField(
                controller: TextEditingController(),
                hint: "Enter your name",
              ),
              SizedBox(height: 1.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'City',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h),
              CustomTextFormField(
                controller: TextEditingController(),
                hint: "Enter city",
              ),
              SizedBox(height: 1.5.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your email (its optional)',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5.h),
              CustomTextFormField(
                controller: TextEditingController(),
                hint: "Example@gmail.com",
              ),
              const Spacer(),
              CustomButton(
                  title: 'Next',
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
