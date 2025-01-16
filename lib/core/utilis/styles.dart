import 'package:flutter/material.dart';
import 'package:uipractice/core/utilis/responsive_font_size.dart';

abstract class Styles {

  static regular18(context) {
    return TextStyle(
      color: const Color(0xFF000000).withOpacity(.7),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  } ////////

  static semiBold18(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  } //////////

  static regular20(context) {
    return TextStyle(
      color: const Color(0xFF000000).withOpacity(.8),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  } ////////

  static medium22(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.w500,
    );
  } /////////


  static semiBold24(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  } /////////

  static medium25(context) {
    return TextStyle(
      color: const Color(0xFF000000),
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontWeight: FontWeight.w500,
    );
  } /////////////
}



