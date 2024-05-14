import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DriverSideButton extends StatelessWidget {
  final Color? textColor, buttonColor;
  final RxBool unableBorder;
  final double? width;
  final String title;
  final VoidCallback onTap;
  const DriverSideButton({
    super.key,
    this.textColor,
    this.buttonColor,
    required this.unableBorder,
    this.width,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.h),
          border: Border.all(
              color: unableBorder.value
                  ? MyAppColors.primaryColor
                  : MyAppColors.primaryColor),
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 3, // Blur radius
              offset: Offset(0, 1), // Offset
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.px,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonAndIcon extends StatelessWidget {
  final VoidCallback routeButton;
  final VoidCallback messageButton;
  const ButtonAndIcon({
    super.key,
    required this.routeButton,
    required this.messageButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: routeButton,
            child: Container(
              height: 5.h,
              // width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/route-icon.svg'),
                  SizedBox(width: 4.px),
                  Text(
                    'Route',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.px,
                        color: MyAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 1.5.h),
        Expanded(
          child: GestureDetector(
            onTap: messageButton,
            child: Container(
              height: 5.h,
              // width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/message.svg'),
                  SizedBox(width: 4.px),
                  Text(
                    'Message',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.px,
                        color: MyAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 1.5.h),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.dialog(
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Material(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(),
                                    Text(
                                      'Call to Customer',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.px,
                                          color: MyAppColors.black,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.close),
                                  ],
                                ),
                                SizedBox(height: 2.5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      '+92 320 4626 050',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.px,
                                          color: MyAppColors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.left,
                                      'Rider number',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: DriverSideButton(
                                        unableBorder: false.obs,
                                        title: 'Call',
                                        textColor: MyAppColors.white,
                                        buttonColor: MyAppColors.primaryColor,
                                        onTap: () {},
                                      ),
                                    ),
                                    SizedBox(width: 1.h),
                                    Expanded(
                                      child: DriverSideButton(
                                        unableBorder: false.obs,
                                        title: 'Whatsapp',
                                        textColor: MyAppColors.white,
                                        buttonColor: MyAppColors.primaryColor,
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              height: 5.h,
              // width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/call.svg'),
                  SizedBox(width: 4.px),
                  Text(
                    'Call',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.px,
                        color: MyAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
