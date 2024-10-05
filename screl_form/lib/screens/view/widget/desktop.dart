import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constants/colors.dart';
import '../../view_model/form_screen_controller.dart';
import 'custom_button.dart';
import 'custom_text.dart';
import 'text_field.dart';

class Desktop extends StatefulWidget {
  const Desktop({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  FormScreenController formScreenController = Get.put(FormScreenController());

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      // box 1::::::::::::::
      Container(
        height: widget.h * 0.8,
        width: widget.w * 0.30,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: SingleChildScrollView(
          child: GetBuilder<FormScreenController>(
              init: formScreenController,
              builder: (formScreenController) {
                String? title;
                String? subtitle;

                switch (formScreenController.selectedIndex) {
                  case 0:
                    title = formScreenController.stepList[0]['title'];
                    subtitle = formScreenController.stepList[0]['subTitle'];
                    break;
                  case 1:
                    title = formScreenController.stepList[1]['title'];
                    subtitle = formScreenController.stepList[1]['subTitle'];
                    break;
                  case 2:
                    title = formScreenController.stepList[2]['title'];
                    subtitle = formScreenController.stepList[2]['subTitle'];
                    break;
                  case 3:
                    title = formScreenController.stepList[3]['title'];
                    subtitle = formScreenController.stepList[3]['subTitle'];
                    break;
                  case 4:
                    title = formScreenController.stepList[4]['title'];
                    subtitle = formScreenController.stepList[4]['subTitle'];
                    break;
                  case 5:
                    title = formScreenController.stepList[5]['title'];
                    subtitle = formScreenController.stepList[5]['subTitle'];
                    break;
                }
                return Column(
                  children: [
                    CustomText(
                        text: title!,
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                    SizedBox(height: widget.h * 0.005),
                    CustomText(
                        text: subtitle!,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    SizedBox(height: widget.h * 0.035),
                    Form(
                      key: formScreenController.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                              text: 'Campaign Subject',
                              fontWeight: FontWeight.w700),
                          SizedBox(height: widget.h * 0.007),
                          CustomTextFormField(
                            contentPadding: const EdgeInsets.all(10),
                            maxLines: 1,
                            controller: formScreenController.subjectController,
                            hintText: 'Enter Subject',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field empty';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: widget.h * 0.01),
                          const CustomText(
                              text: 'Preview text',
                              fontWeight: FontWeight.w700),
                          SizedBox(height: widget.h * 0.007),
                          CustomTextFormField(
                            height: 70,
                            contentPadding: const EdgeInsets.all(10),
                            controller: formScreenController.previewController,
                            hintText: 'Enter text here...',
                            maxLines: 3,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Field empty';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: widget.h * 0.005),
                          const CustomText(
                              text: 'Keep this simple of 50 characters',
                              fontWeight: FontWeight.w500),
                          SizedBox(height: widget.h * 0.02),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomText(
                                        text: '"From" Name',
                                        fontWeight: FontWeight.w700),
                                    SizedBox(height: widget.h * 0.007),
                                    CustomTextFormField(
                                      controller:
                                          formScreenController.nameController,
                                      hintText: 'From Anne',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Field empty';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: widget.h * 0.02),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomText(
                                        text: '"From" Email',
                                        fontWeight: FontWeight.w700),
                                    SizedBox(height: widget.h * 0.007),
                                    CustomTextFormField(
                                      controller:
                                          formScreenController.emailController,
                                      hintText: 'Anne@example.com',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Field empty';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: widget.h * 0.009),
                          const Divider(color: AppColors.dividerColor),
                          Row(
                            children: [
                              CustomText(
                                  text: 'Run only once per customer',
                                  fontWeight:
                                      formScreenController.isChanged1 == true
                                          ? FontWeight.w700
                                          : FontWeight.w500),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.4,
                                child: GFToggle(
                                  onChanged: (val) {
                                    setState(() {
                                      formScreenController.isChanged1 = val!;
                                    });
                                  },
                                  value: formScreenController.isChanged1,
                                  enabledTrackColor: AppColors.deepOrange,
                                  type: GFToggleType.ios,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                  text: 'Custom audience',
                                  fontWeight:
                                      formScreenController.isChanged2 == true
                                          ? FontWeight.w700
                                          : FontWeight.w500),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.4,
                                child: GFToggle(
                                  onChanged: (val) {
                                    setState(() {
                                      formScreenController.isChanged2 = val!;
                                    });
                                  },
                                  value: formScreenController.isChanged2,
                                  enabledTrackColor: AppColors.deepOrange,
                                  enabledThumbColor: AppColors.whiteColor,
                                  type: GFToggleType.ios,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: widget.h * 0.009),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'You can set up a ',
                                  style: GoogleFonts.raleway(
                                    fontSize: 9,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.08,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        'custom domain or connect your email service provider',
                                    style: GoogleFonts.raleway(
                                        fontSize: 10,
                                        color: AppColors.deepOrange,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.15)),
                                TextSpan(
                                    text: ' to change this.',
                                    style: GoogleFonts.raleway(
                                        fontSize: 9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.08)),
                              ],
                            ),
                          ),
                          SizedBox(height: widget.h * 0.012),
                          const Divider(color: AppColors.dividerColor),
                          SizedBox(height: widget.h * 0.012),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: CustomButton(
                                  text: 'Save Draft',
                                  backgroundColor: Colors.white,
                                  textColor: AppColors.deepOrange,
                                  onPressed: () {},
                                  borderSide: const BorderSide(
                                      color: AppColors.deepOrange, width: 1),
                                ),
                              ),
                              SizedBox(width: widget.h * 0.01),
                              Expanded(
                                flex: 1,
                                child: CustomButton(
                                  text: 'Prev Step',
                                  backgroundColor: AppColors.deepOrange,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    formScreenController.prevStep();
                                  },
                                ),
                              ),
                              SizedBox(width: widget.h * 0.01),
                              Expanded(
                                flex: 1,
                                child: CustomButton(
                                  text: 'Next Step',
                                  backgroundColor: AppColors.deepOrange,
                                  textColor: Colors.white,
                                  onPressed: () async {
                                    formScreenController.validateAndProceed();
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),

      // box 2::::::::::::::
      Container(
        height: widget.h * 0.8,
        width: widget.w * 0.20,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            )),
        child: GetBuilder<FormScreenController>(
          init: formScreenController,
          builder: (formScreenController) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: formScreenController.stepList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Container(
                              height: widget.h * 0.039,
                              width: widget.h * 0.039,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.08,
                                    color: formScreenController.selectedIndex ==
                                            index
                                        ? AppColors.deepOrange
                                        : Colors.black,
                                  ),
                                  color: formScreenController.selectedIndex ==
                                          index
                                      ? AppColors.deepOrange
                                      : Colors.white,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  formScreenController.stepList[index]
                                          ['index'] ??
                                      '',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: formScreenController.selectedIndex ==
                                            index
                                        ? AppColors.whiteColor
                                        : AppColors.blackColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                          SizedBox(width: widget.h * 0.015),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: formScreenController.stepList[index]
                                            ['title'] ??
                                        '',
                                    color: AppColors.blackColor,
                                    fontWeight:
                                        formScreenController.selectedIndex ==
                                                index
                                            ? FontWeight.w800
                                            : FontWeight.w600,
                                    fontSize: 9),
                                CustomText(
                                    text: formScreenController.stepList[index]
                                            ['subTitle'] ??
                                        '',
                                    color: AppColors.subTitleColor,
                                    fontWeight:
                                        formScreenController.selectedIndex ==
                                                index
                                            ? FontWeight.w600
                                            : FontWeight.w400,
                                    fontSize: 9),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              const CustomText(
                  text: 'Need Help?', fontSize: 9, fontWeight: FontWeight.w800),
              SizedBox(height: widget.h * 0.002),
              const CustomText(
                text:
                    'Get to know how your campaign\ncan reach a wider audience',
                fontSize: 8,
                color: AppColors.subTitleColor,
              ),
              SizedBox(height: widget.h * 0.007),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(width: 0.3, color: Colors.black87),
                ),
                child: const CustomText(
                  text: 'Contact Us',
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 63, 62, 62),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
