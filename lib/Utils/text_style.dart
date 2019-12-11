import 'package:flutter/material.dart';
import 'package:re_sew/Utils/Colour.dart';

class Style {
  static final baseTextStyle = const TextStyle(fontFamily: 'Roboto');
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400);
  static final titleTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
  static final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600);
  static final headerTextStyleAccent = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600);
  static final header2TextStyle = baseTextStyle.copyWith(
      color: Color(0xff4D5587), fontSize: 24.0, fontWeight: FontWeight.w600);
  static final pageTitleTextStyle = baseTextStyle.copyWith(
      color: Color(0xff4D5587), fontSize: 32.0, fontWeight: FontWeight.w600);
  static final mainCopyTextStyle = baseTextStyle.copyWith(
      color: copy_01Color, fontSize: 16.0, fontWeight: FontWeight.w400);
  static final boldCopyTextStyle = baseTextStyle.copyWith(
      color: accent_01Color, fontSize: 18.0, fontWeight: FontWeight.w600);
  static final bold2CopyTextStyle = baseTextStyle.copyWith(
      color: brand_01Color, fontSize: 18.0, fontWeight: FontWeight.w600);
  static final smallCopyTextStyle = baseTextStyle.copyWith(
      color: brand_01Color, fontSize: 14.0, fontWeight: FontWeight.w300);
}
