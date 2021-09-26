/*
* define path of Text, Button,...
* */
import 'package:english_app/values/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // static const TextStyle h3 = TextStyle(fontSize: 32,fontFamily: AppFonts.sen,color: Colors.black);
  //static TextStyle h3 = GoogleFonts.sen(fontSize: 32, color: Colors.black); //Google khoong cho dungf const
  static TextStyle h1 = TextStyle(
      fontFamily: AppFonts.sen, fontSize: 109.66, color: Colors.white);
  static TextStyle h2 =
      TextStyle(fontFamily: AppFonts.sen, fontSize: 67.77, color: Colors.white);
  static TextStyle h3 =
      TextStyle(fontFamily: AppFonts.sen, fontSize: 41.89, color: Colors.white);
  static TextStyle h4 =
      TextStyle(fontFamily: AppFonts.sen, fontSize: 25.89, color: Colors.white);
  static TextStyle h5 =
      TextStyle(fontFamily: AppFonts.sen, fontSize: 16, color: Colors.white);
  static TextStyle h6 =
      TextStyle(fontFamily: AppFonts.sen, fontSize: 9.89, color: Colors.white);
}
