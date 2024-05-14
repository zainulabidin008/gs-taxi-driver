import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gs_taxi/main.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'animation/timer_animation.dart';
import 'bitfurther_screen.dart';
import 'bottom_sheets/bottom_sheets.dart';
import 'custom_widgets/maps_button_widgets/driverside_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: const GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.7749, -122.4194),
                  zoom: 12,
                ),
                markers: {},
              ),
            ),
            Positioned(
              top: 3.h,
              left: 3.h,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/icon_1.svg',
                    height: 2.h,
                    width: 2.h,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 3.h,
              right: 3.h,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => BitFurtherScreen());
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.px, vertical: 10.px),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72.px),
                    color: MyAppColors.greyBlack,
                  ),
                  child: Center(
                    child: Text(
                      "Offline",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15.h,
              right: 3.h,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/current-location.svg',
                    height: 2.h,
                    width: 2.h,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 24.px,
              left: 60.px,
              right: 60.px,
              child: CustomButtonRounded(
                color: MyAppColors.primaryColor,
                onTap: () {
                  tripStartedBottomSheet(context);
                },
                title: "Go online",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableBottomSheet extends StatefulWidget {
  @override
  _ExpandableBottomSheetState createState() => _ExpandableBottomSheetState();
}

class _ExpandableBottomSheetState extends State<ExpandableBottomSheet> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _onSkipPressed() {
    // Close the bottom sheet
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        height: _isExpanded ? 52.h : 16.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: _toggleExpand,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _isExpanded ? 'Incoming Ride' : 'Incoming Ride',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_up_rounded,
                    ),
                  ],
                ),
              ),
              if (_isExpanded) ...[
                // SizedBox(height: 10.0),
                Column(
                  children: [
                    SizedBox(height: 1.h),
                    Text(
                      'Distance to pickup - 2km',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: MyAppColors.greyDark,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ride route',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.px,
                              color: MyAppColors.subtitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    SizedBox(
                      height: 10.px,
                      child: Stack(
                        children: [
                          Center(
                            child: SizedBox(
                              width: Get.width,
                              height: 5,
                              child: AnimatedHorizontalContainer(
                                percentage: 0.8,
                                duration: Duration(seconds: 1),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: Get.width,
                              height: 3,
                              color: MyAppColors.primaryColor.withOpacity(0.2),
                              child: AnimatedHorizontalContainer(
                                percentage: 0.8,
                                duration: Duration(seconds: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/octicon_dot-16.svg',
                              height: 20.px,
                              width: 20.px,
                            ),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SizedBox(height: 2),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SizedBox(height: 2),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SizedBox(height: 2),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SizedBox(height: 2),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SizedBox(height: 2),
                            Container(
                              height: 6.px,
                              width: 2,
                              color: MyAppColors.hintColor,
                            ),
                            SvgPicture.asset(
                              'assets/icons/suggestion-location.svg',
                              height: 20.px,
                              width: 20.px,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 45.px,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.px),
                                  color: MyAppColors.greyBlue,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8.px),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rd. Allentown',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.px,
                                              color: MyAppColors.subtitle,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '1901 Thornridge Cir. Shiloh',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.px,
                                              color: MyAppColors.hintColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Container(
                                height: 45.px,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.px),
                                  color: MyAppColors.greyBlue,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8.px),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rd. Allentown',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.px,
                                              color: MyAppColors.subtitle,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '1901 Thornridge Cir. Shiloh',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.px,
                                              color: MyAppColors.hintColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Divider(
                      thickness: 0.1,
                      height: 1.px,
                      color: MyAppColors.hintColor,
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Payment method',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.px,
                              color: MyAppColors.subtitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/cash.svg'),
                        Text(
                          '\$120',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.px,
                              color: MyAppColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Add the rest of your expanded content here
              ],
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: DriverSideButton(
                      unableBorder: true.obs,
                      buttonColor: MyAppColors.white,
                      textColor: MyAppColors.primaryColor,
                      title: 'Skip',
                      onTap: () {
                        _onSkipPressed();
                      },
                    ),
                  ),
                  SizedBox(width: 1.5.h),
                  Expanded(
                    child: DriverSideButton(
                      unableBorder: false.obs,
                      buttonColor: MyAppColors.primaryColor,
                      textColor: MyAppColors.white,
                      title: 'Accept',
                      onTap: () {
                        Get.back();
                        MyBottomSheets.dontBeLateBottomSheet();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void tripStartedBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    // isDismissible: false,
    builder: (context) => ExpandableBottomSheet(),
  );
}
