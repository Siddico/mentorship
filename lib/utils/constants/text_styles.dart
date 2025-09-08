import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentorship/utils/constants/app_colors.dart';

abstract class TextStyles{
  static TextStyle fontsize25weight700 = GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700, color: AppColors.whiteColor);
  static TextStyle fontsize20weight700 = GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle fontsize16weight700 = GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.whiteColor);
  static TextStyle fontsize14weight400 = GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);
}