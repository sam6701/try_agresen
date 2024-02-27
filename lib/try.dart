import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tryagresen/colors/color_utils.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:sizer/sizer.dart';

class Trypage extends StatefulWidget {
  const Trypage({super.key});

  @override
  State<Trypage> createState() => _TrypageState();
}

class _TrypageState extends State<Trypage> {
  // Device device = Device();
  // ignore: prefer_const_constructors

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, Orientation, DeviceType) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight((100 / 752) * 100.h),
            child: AppBar(
              backgroundColor: ColorUtils.lightcream.withOpacity(0.8),
              title: Padding(
                padding: EdgeInsets.only(top: (10 / 752) * 100.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Image.asset(
                        'assets/images/front_logo.png',
                        width: (122 / 339) * 100.w,
                        height: (44 / 752) * 100.h,
                      ),
                      fit: BoxFit.fill,
                    ),
                    CircleAvatar(
                      radius: (22 / 752) * 100.h,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              double paddingRatio = constraints.maxWidth > 600 ? 0.05 : 0.03;
              double paddingTop = constraints.maxHeight *
                  paddingRatio *
                  (MediaQuery.of(context).size.width / 339);
              double paddingHor = constraints.maxWidth *
                  paddingRatio *
                  (MediaQuery.of(context).size.width / 339);
              double padd = (MediaQuery.of(context).size.width / 339);
              return SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        ColorUtils.lightcream.withOpacity(0.8),
                        ColorUtils.white
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: (15 / 339) * 100.w),
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                            color: ColorUtils.dascolor,
                            fontSize:
                                constraints.maxWidth > 600 ? 32.sp : 32.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'IBM Plex Sans Devanagari',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all((15 / 752) * 100.h),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius:
                                BorderRadius.circular((18 / 752) * 100.h),
                          ),
                          height: constraints.maxWidth > 600
                              ? MediaQuery.of(context).size.height *
                                  (211 / 752) *
                                  (MediaQuery.of(context).size.width / 339)
                              : MediaQuery.of(context).size.height *
                                  (250 / 896) *
                                  (MediaQuery.of(context).size.width / 339),
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular((18 / 752) * 100.h),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 6, // 60% of the height
                                  child: Container(
                                    color: ColorUtils.lightbrownishpink,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: (20 / 339) * 100.w,
                                              top: (18 / 752) * 100.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Total Donation',
                                                style: TextStyle(
                                                  color: ColorUtils.primary,
                                                  fontSize: 14.sp,
                                                  fontFamily:
                                                      'IBM Plex Sans Devanagari',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: (18 / 752) * 100.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '₹10,00,000',
                                                style: TextStyle(
                                                  color:
                                                      ColorUtils.darkbrownish,
                                                  fontSize: 36.sp,
                                                  fontFamily:
                                                      'IBM Plex Sans Devanagari',
                                                  fontWeight: FontWeight.w600,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      ColorUtils.darkbrownish,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4, // 40% of the height
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 30, // 50% of the width
                                        child: Container(
                                          color: ColorUtils.white,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: (6 / 752) * 100.h),
                                                child: Text(
                                                  "Total Referal",
                                                  style: TextStyle(
                                                    color: ColorUtils.trefcolor,
                                                    fontSize: 14.sp,
                                                    fontFamily:
                                                        'IBM Plex Sans Devanagari',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: (4 / 752) * 100.h),
                                                child: Text(
                                                  "480",
                                                  style: TextStyle(
                                                    color: ColorUtils.nocolor,
                                                    fontSize: 24.sp,
                                                    fontFamily:
                                                        'IBM Plex Sans Devanagari',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1, // 50% of the width
                                        child: Container(
                                          color: ColorUtils.lightbrownishpink,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 30, // 50% of the width
                                        child: Container(
                                          color: ColorUtils.white,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: (6 / 752) * 100.h),
                                                child: Text(
                                                  "Total Donatar",
                                                  style: TextStyle(
                                                    color: ColorUtils.trefcolor,
                                                    fontSize: 14.sp,
                                                    fontFamily:
                                                        'IBM Plex Sans Devanagari',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: (4 / 752) * 100.h),
                                                child: Text(
                                                  "214",
                                                  style: TextStyle(
                                                    color: ColorUtils.nocolor,
                                                    fontSize: 24.sp,
                                                    fontFamily:
                                                        'IBM Plex Sans Devanagari',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all((15 / 752) * 100.h),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular((18 / 752) * 100.h),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  ColorUtils.darkbrownish2.withOpacity(0.65),
                                  BlendMode.multiply,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(
                                        (18 / 752) * 100.h),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/background.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: constraints.maxWidth > 600
                                      ? MediaQuery.of(context).size.height *
                                          (211 / 752) *
                                          (MediaQuery.of(context).size.width /
                                              339)
                                      : MediaQuery.of(context).size.height *
                                          (250 / 896) *
                                          (MediaQuery.of(context).size.width /
                                              339),
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: (12 / 752) * 100.h,
                                      left: (12 / 339) * 100.w,
                                      right: (12 / 339) * 100.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Membership Card",
                                        style: TextStyle(
                                          color: ColorUtils.white,
                                          fontSize: 24.sp,
                                          fontFamily: 'Sahitya',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Image.asset(
                                          'assets/images/front_logo.png',
                                          width: (101 / 339) * 100.w,
                                          height: (33 / 752) * 100.h,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: (35 / 752) * 100.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Membership ID",
                                        style: TextStyle(
                                          color: ColorUtils.white,
                                          fontSize: 12.sp,
                                          fontFamily:
                                              'IBM Plex Sans Devanagari',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "123456787210",
                                        style: TextStyle(
                                          color: ColorUtils.white,
                                          fontSize: 28.sp,
                                          fontFamily:
                                              'IBM Plex Sans Devanagari',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: (22 / 752) * 100.h,
                                      left: (12 / 339) * 100.w,
                                      right: (12 / 339) * 100.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Alok Agrawal",
                                        style: TextStyle(
                                          color: ColorUtils.white,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      Text(
                                        "valid till:25/06/26",
                                        style: TextStyle(
                                          color: ColorUtils.white,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
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
              );
            },
          ),
        );
      },
    );
  }
}
