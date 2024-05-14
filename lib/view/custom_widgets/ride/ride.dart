import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../custom_imagepicker.dart';

class SelectRideWidget extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const SelectRideWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 11.h,
        width: 12.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.px),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 3, // Blur radius
              offset: Offset(0, 1), // Offset
            ),
          ],
          color: MyAppColors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(2.px),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                image,
                height: 6.h,
                width: 6.h,
              ),
              Text(
                textAlign: TextAlign.left,
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomMapTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  const CustomMapTextFormField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.px,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
          isDense: true,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.px),
            borderSide: BorderSide.none,
          ),
          fillColor: MyAppColors.greyBlue,
        ),
      ),
    );
  }
}

class CustomFurtherTile extends StatelessWidget {
  final String title;
  final RxBool achieve;
  final RxBool arrowIcon;
  final VoidCallback? onTap;
  const CustomFurtherTile(
      {super.key,
      required this.achieve,
      required this.title,
      required this.arrowIcon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.px),
      child: Column(
        children: [
          Row(
            children: [
              achieve.value
                  ? CircleAvatar(
                      radius: 10.px,
                      backgroundColor: MyAppColors.primaryColor,
                      child: SvgPicture.asset('assets/icons/check1.svg'),
                    )
                  : CircleAvatar(
                      radius: 10.px,
                      backgroundColor: MyAppColors.primaryColor,
                    ),
              SizedBox(width: 1.h),
              Text(
                textAlign: TextAlign.left,
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
              ),
              Spacer(),
              arrowIcon.value
                  ? GestureDetector(
                      onTap: onTap,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20.px,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          Divider(
            thickness: 0.2.px,
            color: MyAppColors.black,
          )
        ],
      ),
    );
  }
}

class CustomTextFormFieldDriver extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  const CustomTextFormFieldDriver(
      {super.key, this.controller, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.px),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.px,
                color: MyAppColors.subtitle,
              ),
            ),
          ),
          SizedBox(height: 6.px),
          SizedBox(
            height: 49.px,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                fillColor: MyAppColors.greyBlue,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.px),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.h),
        ],
      ),
    );
  }
}

class CustomLicenceImagePicker extends StatefulWidget {
  final String title;
  final double? width;
  CustomLicenceImagePicker({
    super.key,
    required this.title,
    this.width,
  });

  @override
  State<CustomLicenceImagePicker> createState() =>
      _CustomLicenceImagePickerState();
}

class _CustomLicenceImagePickerState extends State<CustomLicenceImagePicker> {
  File? file;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ImagePickerDialog(
                  onImageSelected: (File image) {
                    setState(() {
                      file = image;
                    });
                  },
                );
              },
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.px),
            child: Container(
              width: widget.width,
              height: 120.px,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.greyBlue,
              ),
              child: Center(
                child: file != null
                    ? Image.file(
                        file!,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                    : SvgPicture.asset('assets/images/plus.svg'),
              ),
            ),
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          textAlign: TextAlign.center,
          widget.title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}
