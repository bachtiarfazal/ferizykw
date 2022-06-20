import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
Color kOrangeColor = Color(0xffDC7726);
Color kBgColor = Color(0xffE8E8E8);
Color kWhiteColor = Color(0xffFFFFFF);
Color kFontColor = Color(0x303030);
Color kBlueColor = Color(0xff1767B3);
//fonts
TextStyle BlackTS = GoogleFonts.poppins(
  color: Colors.black,
);
TextStyle WhiteTS = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle OrangeTS = GoogleFonts.poppins(
  color: kOrangeColor,
);
TextStyle BlueTS = GoogleFonts.poppins(
  color: kBlueColor,
);
TextStyle GreyTS = GoogleFonts.poppins(
  color: Color.fromARGB(255, 111, 111, 111),
);

//FontWeight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
