import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../animation/timer_animation.dart';
import '../app_colors/app_colors.dart';
import '../custom_widgets/gs_taxi.dart';
import '../custom_widgets/maps_button_widgets/driverside_buttons.dart';
import '../messages_screen.dart';

class MyBottomSheets {
  // static void tripStartedBottomSheet() {
  //   Get.bottomSheet(
  //     SingleChildScrollView(
  //       physics: AlwaysScrollableScrollPhysics(),
  //       child: SizedBox(
  //         height: 54.h,
  //         child: Padding(
  //           padding: EdgeInsets.all(20.px),
  //           child: Column(
  //             children: [
  //               // SizedBox(height: 2.h),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   SizedBox(),
  //                   Text(
  //                     'Incoming Ride',
  //                     style: GoogleFonts.poppins(
  //                       textStyle: TextStyle(
  //                         fontWeight: FontWeight.w700,
  //                         fontSize: 18.px,
  //                         color: MyAppColors.subtitle,
  //                       ),
  //                     ),
  //                   ),
  //                   GestureDetector(
  //                       onTap: () {
  //                         Get.back();
  //                       },
  //                       child: Icon(Icons.keyboard_arrow_down_rounded))
  //                 ],
  //               ),
  //               SizedBox(height: 1.h),
  //               Text(
  //                 'Distance to pickup - 2km',
  //                 style: GoogleFonts.poppins(
  //                   textStyle: TextStyle(
  //                     fontWeight: FontWeight.w500,
  //                     fontSize: 14.px,
  //                     color: MyAppColors.greyDark,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 1.5.h),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     'Ride route',
  //                     style: GoogleFonts.poppins(
  //                       textStyle: TextStyle(
  //                         fontWeight: FontWeight.w700,
  //                         fontSize: 16.px,
  //                         color: MyAppColors.subtitle,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 2.h),
  //               SizedBox(
  //                 height: 10.px,
  //                 child: Stack(
  //                   children: [
  //                     Center(
  //                       child: SizedBox(
  //                         width: Get.width,
  //                         height: 5,
  //                         child: AnimatedHorizontalContainer(
  //                           percentage: 0.8,
  //                           duration: Duration(seconds: 1),
  //                         ),
  //                       ),
  //                     ),
  //                     Center(
  //                       child: Container(
  //                         width: Get.width,
  //                         height: 3,
  //                         color: MyAppColors.primaryColor.withOpacity(0.2),
  //                         child: AnimatedHorizontalContainer(
  //                           percentage: 0.8,
  //                           duration: Duration(seconds: 1),
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(height: 2.h),
  //               Row(
  //                 children: [
  //                   Column(
  //                     children: [
  //                       SvgPicture.asset(
  //                         'assets/icons/octicon_dot-16.svg',
  //                         height: 20.px,
  //                         width: 20.px,
  //                       ),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SizedBox(height: 2),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SizedBox(height: 2),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SizedBox(height: 2),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SizedBox(height: 2),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SizedBox(height: 2),
  //                       Container(
  //                         height: 6.px,
  //                         width: 2,
  //                         color: MyAppColors.hintColor,
  //                       ),
  //                       SvgPicture.asset(
  //                         'assets/icons/suggestion-location.svg',
  //                         height: 20.px,
  //                         width: 20.px,
  //                       ),
  //                     ],
  //                   ),
  //                   Expanded(
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           height: 45.px,
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(8.px),
  //                             color: MyAppColors.greyBlue,
  //                           ),
  //                           child: Row(
  //                             children: [
  //                               SizedBox(width: 8.px),
  //                               Column(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   Text(
  //                                     'Rd. Allentown',
  //                                     style: GoogleFonts.poppins(
  //                                       textStyle: TextStyle(
  //                                         fontWeight: FontWeight.w700,
  //                                         fontSize: 12.px,
  //                                         color: MyAppColors.subtitle,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   Text(
  //                                     '1901 Thornridge Cir. Shiloh',
  //                                     style: GoogleFonts.poppins(
  //                                       textStyle: TextStyle(
  //                                         fontWeight: FontWeight.w400,
  //                                         fontSize: 11.px,
  //                                         color: MyAppColors.hintColor,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                         SizedBox(height: 2.h),
  //                         Container(
  //                           height: 45.px,
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(8.px),
  //                             color: MyAppColors.greyBlue,
  //                           ),
  //                           child: Row(
  //                             children: [
  //                               SizedBox(width: 8.px),
  //                               Column(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceEvenly,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   Text(
  //                                     'Rd. Allentown',
  //                                     style: GoogleFonts.poppins(
  //                                       textStyle: TextStyle(
  //                                         fontWeight: FontWeight.w700,
  //                                         fontSize: 12.px,
  //                                         color: MyAppColors.subtitle,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   Text(
  //                                     '1901 Thornridge Cir. Shiloh',
  //                                     style: GoogleFonts.poppins(
  //                                       textStyle: TextStyle(
  //                                         fontWeight: FontWeight.w400,
  //                                         fontSize: 11.px,
  //                                         color: MyAppColors.hintColor,
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 1.h),
  //               Divider(
  //                 thickness: 0.1,
  //                 height: 1.px,
  //                 color: MyAppColors.hintColor,
  //               ),
  //               SizedBox(height: 2.h),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     'Payment method',
  //                     style: GoogleFonts.poppins(
  //                       textStyle: TextStyle(
  //                         fontWeight: FontWeight.w700,
  //                         fontSize: 16.px,
  //                         color: MyAppColors.subtitle,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 1.5.h),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   SvgPicture.asset('assets/images/cash.svg'),
  //                   Text(
  //                     '\$120',
  //                     style: GoogleFonts.poppins(
  //                       textStyle: TextStyle(
  //                         fontWeight: FontWeight.w600,
  //                         fontSize: 12.px,
  //                         color: MyAppColors.black,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               Spacer(),
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child: DriverSideButton(
  //                       unableBorder: true.obs,
  //                       buttonColor: MyAppColors.white,
  //                       textColor: MyAppColors.primaryColor,
  //                       title: 'Skip',
  //                       onTap: () {},
  //                     ),
  //                   ),
  //                   SizedBox(width: 1.5.h),
  //                   Expanded(
  //                     child: DriverSideButton(
  //                       unableBorder: false.obs,
  //                       buttonColor: MyAppColors.primaryColor,
  //                       textColor: MyAppColors.white,
  //                       title: 'Accept',
  //                       onTap: () {},
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     backgroundColor: Colors.white,
  //     elevation: 0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(24.px),
  //         topLeft: Radius.circular(24.px),
  //       ),
  //     ),
  //     isScrollControlled: true,
  //   );
  // }

  static void dontBeLateBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 65.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '01:56',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.keyboard_arrow_down_rounded))
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  "Don't be late",
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
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Arrived',
                  onTap: () {
                    Get.back();
                    waitingBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void waitingBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 65.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '01:56',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  "Waiting",
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
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Start',
                  onTap: () {
                    Get.back();
                    rideContinueAndWaitingBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void rideContinueAndWaitingBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 68.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Waiting',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  "Ride continuing",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Image.asset('assets/images/Ellipse 7.png'),
                        ),
                        SizedBox(width: 0.5.h),
                        Text(
                          'Mohsin',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.px,
                              color: MyAppColors.subtitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/images/circle-timer.svg'),
                        Text(
                          'Waiting',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.px,
                              color: MyAppColors.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Complete',
                  onTap: () {
                    Get.back();
                    ratingStarBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void ratingStarBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          // height: 54.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$120',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                Row(
                  children: [
                    Text(
                      "Cash",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.greyDark,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your earning",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GS taxi charges",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "\$100",
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
                SizedBox(height: 2.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ride fare",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "245",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Waiting",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "45",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Charges",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "290",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Rate User",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 26.0,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.greyBlue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 10, // Blur radius
                        offset: Offset(0, 1), // Offset
                      ),
                    ],
                  ),
                  height: 10.h,
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Comment',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.px,
                          color: MyAppColors.hintColor,
                        ),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                SizedBox(
                  width: Get.width / 2,
                  child: CustomButtonRounded(
                    title: 'Done',
                    onTap: () {
                      Get.back();
                      parcalDeliveryBottomSheet();
                    },
                    color: MyAppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void parcalDeliveryBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          // height: 54.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      'Parcel delivery',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Expanded(
                      child: DriverSideButton(
                        unableBorder: true.obs,
                        buttonColor: MyAppColors.white,
                        textColor: MyAppColors.primaryColor,
                        title: 'Skip',
                        onTap: () {},
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
                          foodDeliveryBottomSheet();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void foodDeliveryBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          // height: 54.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      'Food delivery',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Expanded(
                      child: DriverSideButton(
                        unableBorder: true.obs,
                        buttonColor: MyAppColors.white,
                        textColor: MyAppColors.primaryColor,
                        title: 'Skip',
                        onTap: () {},
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
                          arrivingSoonBottomSheet();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void arrivingSoonBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 65.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Arriving soon',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.keyboard_arrow_down_rounded))
                  ],
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Image.asset('assets/images/Ellipse 7.png'),
                        ),
                        SizedBox(width: 0.5.h),
                        Text(
                          'Mohsin',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.px,
                              color: MyAppColors.subtitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Order code',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.px,
                              color: MyAppColors.black,
                            ),
                          ),
                        ),
                        Text(
                          'O8716',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.px,
                              color: MyAppColors.primaryColor,
                            ),
                          ),
                        ),
                        Text(
                          '4 Item',
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
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Pick-up',
                  onTap: () {
                    Get.back();
                    startRideBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void startRideBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 65.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.keyboard_arrow_down_rounded))
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Start',
                  onTap: () {
                    Get.back();
                    completeRideBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void completeRideBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 65.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '01:56',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.keyboard_arrow_down_rounded))
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  "Ride continuing",
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
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ButtonAndIcon(
                  routeButton: () {},
                  messageButton: () {
                    Get.to(() => MessagesScreen());
                  },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 1.h),
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
                SizedBox(height: 2.h),
                DriverSideButton(
                  unableBorder: false.obs,
                  title: 'Complete',
                  onTap: () {
                    Get.back();
                    ratingStarEndBottomSheet();
                  },
                  buttonColor: MyAppColors.primaryColor,
                  textColor: MyAppColors.white,
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void ratingStarEndBottomSheet() {
    Get.bottomSheet(
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          // height: 54.h,
          child: Padding(
            padding: EdgeInsets.all(20.px),
            child: Column(
              children: [
                // SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$120',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                Row(
                  children: [
                    Text(
                      "Cash",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.greyDark,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your earning",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "GS taxi charges",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "\$100",
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
                SizedBox(height: 2.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ride fare",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "245",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Waiting",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "45",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Charges",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      "290",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Rate User",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 26.0,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.greyBlue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 10, // Blur radius
                        offset: Offset(0, 1), // Offset
                      ),
                    ],
                  ),
                  height: 10.h,
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Comment',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.px,
                          color: MyAppColors.hintColor,
                        ),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                SizedBox(
                  width: Get.width / 2,
                  child: CustomButtonRounded(
                    title: 'Done',
                    onTap: () {
                      Get.back();
                    },
                    color: MyAppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
