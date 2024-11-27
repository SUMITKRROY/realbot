import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppColors extends MaterialColor {
  AppColors(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int primaryColorValue = 0xFFFFFFFF;
  // ********TESTCOLOR*********
  static const decoraterinnerColor = Color(0xFFE1E1D9);
  static const primaryColorpink = Color(0xFFFF4CBB);
  static const primaryColorblue = Color(0xFF34C1D1);
  static const primaryColorblueforexplorescreen = Color(0xFF39C1CF);

  static const comomnColorgrey = Color(0xFFE1E1D9);
  static const pricecolor = Color(0xFFCB4551);
  static const Textcolorsubheading = Color(0xFF33333F);
  static const Textcolorheading = Color(0xFF11111F);
  static const Khomemainheading = Color(0xFF11111F);
  static const Textcolorheadingblack = Color(0xFF000000);
  static const Textcolorgreay = Color(0xFF312D2D);
  static const bulletcolor = Color(0xFF333333);
  static const Textcolor = Color(0xFF666666);
  static const white = Color(0xFFFFFFFF);
  static const bordergrey = Color(0xFFD9D9D9);
  static const bordercontainergreyinside = Color(0xFFFAFAFA);
  static const bordercontainergreyinsideyellow = Color(0xFFFFF3A9);
  static const underlineTextcolorheading = Color(0xFF2C8FEB);
  static const  buttongrey = Color(0xFFFFFFFF);
  static const  filtergrey = Color(0xFF33333F);
  static const  textgrey = Color(0xFF505050F);
  static const  textgreyordersummaary = Color(0xFF707070);








  // ********TESTCOLOR*********


  //
  // static const primaryColor1 =  Color(0xff54B9A0);
  // static const hedingqualification = Color(0xFF646060);
  // static const subqualification = Color(0xFFA79E9E);
  // static const hadingtextColorblack = Color(0xFF2D2C2C);
  // static const primaryColor10 = Color(0x1A1a416a);
  // static const primaryLightYellow = Color(0xFFcba165);
  //
  // static const colorTransparent = Color(0x00000000);
  // static const navColor = Color(0xFF461464);
  // static final tabcolor = Color(0xff461464);
  // static const cardColor = Color(0xff461464);
  // //Snackbar color
  // static const snackBarColor = Color(0xff424242);
  // static const snackBarRed = Color(0xffe53e3f);
  // static const snackBarGreen = Color(0xff2dca73);
  // static const kprimecolors = Color(0xFF1E88E5);
  //
  // //White shades
  // static const white = Color(0xFFFFFFFF);
  // static const white30 = Color(0x4DFFFFFF);
  // static const white60 = Color(0x99FFFFFF);
  // static final white90 = const Color(0x99FFFFFF).withOpacity(0.9);
  // static const white10 = Color(0x1AFFFFFF);
  // static const boxColor = Color(0xFFf4f4f4);
  // static const txtColor = Color(0xFFcccccc);
  // static const orangeColor = Color(0xffea561b);
  // static const pinkColor = Color(0xffff5e85);
  // static const blueColor = Color(0xff01ccfe);
  // static const purpleColor = Color(0xff9069ea);
  // static const bgColor = Color(0xfffcf1eb);
  // static const bgDark = Color(0xfff5bd9f);
  // static const colorbg = Color(0xffeeeeee);
  // static const colorgreen = Color(0xff00c074);
  // static const colorlightgreen = Color(0xffc9f6e4);
  // static const selectcolor = Color(0xfff5d0bd);
  // static const circlecolor = Color(0xff15750e);
  //
  // //Black shades
  // static const black = Color(0xFF000000);
  // static const black10 = Color(0x1A000000);
  // static const blackShade2 = Color(0xFF101010);
  // static const blackOpacity10 = Color(0x1A000000);
  // static const blackOpacity15 = Color(0x26000000);
  // static const blackOpacity5 = Color(0x0D000000);
  // static const black80 = Color(0xCC000000);
  // static const black2 = Color(0xff343434);
  // static const black70 = Color(0xB3000000);
  // static const black60 = Color(0x99000000);
  //
  // //Grey Shades
  // static const textPrimaryColor = Color(0xFF2c3551);
  // static const textPrimaryColor80 = Color(0xCC2c3551);
  // static const textPrimaryColor40 = Color(0x662c3551);
  // static const textPrimaryColor50 = Color(0x802c3551);
  // static const textPrimaryColor60 = Color(0x992c3551);
  // static const textPrimaryColor30 = Color(0x4D2c3551);
  // static const textPrimaryColor8 = Color(0x142c3551);
  // static const textPrimaryColor10 = Color(0xFFDCDCDC);
  // static const textGrey1 = Color(0xFF2a2e32);
  // static const textGrey2 = Color(0xFFa8b6c7);
  // static const textGrey3 = Color(0xFFecf0f5);
  // static const textGrey4 = Color(0xFFd4d6dc);
  // static const pale_grey_two = Color(0xFFe6eef2);
  // static const textGrey5 = Color(0xFFc2c4c7);
  // static const textGrey6 = Color(0xFFecf0f1);
  // static const textGrey7 = Color(0x91ecf0f5);
  // static const battleship_grey = Color(0xFF797a7c);
  // static const textGrey8 = Color(0x19264974);
  // static const textGrey9 = Color(0x3decf0f5);
  // static const textGrey10 = Color(0xFFEEEEEE);
  // static const textGrey11 = Color(0xFF707070);
  // static const textGrey12 = Color(0xFFF6F6F6);
  // static const textDarkBlue = Color(0xFF264974);
  // static const lightPurple = Color(0x4a8e79cf);
  // static const purple = Color(0xff8e79cf);
  // static const blue1 = Color(0xff5b4e86);
  // static const greenColor = Color(0xff48b352);
  // static const cyanColor = Color(0xffaae7ff);
  // static const warm_grey = Color(0xff979797);
  // static const dark_grey_blue_24 = Color(0x3e2c3551);
  // static const dark_grey = Color(0x707070);
  // static const dark_primary = Color(0xFFFFAF6A);
  // static const light_primary = Color(0xFFFF9800);
  // static const dark_black = Color(0xFF3A3A3A);
  // static const white_light = Color(0xFFEEEEEE);
  //
  // static const colorLightYellow = Color(0xfffddd7d);
  // static const colorYellow = Color(0xffeed792);
  // static const dark_grey_blue = Color(0xff2c3551);
  // static const light_green = Color(0x0c48b352);
  // static final dark_grey_blue_40 = Color(0xff2c3551).withOpacity(0.4);
  // static final dark_grey_blue_20 = Color(0xff2c3551).withOpacity(0.2);
  // static final dark_grey_blue_08 = Color(0x142c3551);
  //
  // static const training_color_1 = Color(0xFFaa9cf7);
  // static const training_color_2 = Color(0xffc0d0f6);
  // static const training_color_3 = Color(0xfff7a89c);
  // static const training_color_4 = Color(0xffFFC794);
  // static const training_color_5 = Color(0xff0022FF);

  static const Color primary_color =
  MaterialColor(primaryColorValue, <int, Color>{
    50: Color(primaryColorValue),
    100: Color(primaryColorValue),
    200: Color(primaryColorValue),
    300: Color(primaryColorValue),
    400: Color(primaryColorValue),
    500: Color(primaryColorValue),
    600: Color(primaryColorValue),
    700: Color(primaryColorValue),
    800: Color(primaryColorValue),
    900: Color(primaryColorValue),
  });
}
class AppTheme{
  static Color LightBackgroundColor = const Color(0xfff2f2f2);
  static Color LightPrimaryColor = const Color(0xffff8200);
  static Color LightSecondryColor = const Color(0xff040415);
  static Color LightAccentColor = const Color(0xff7393B3);
  static Color LightParticlesColor = const Color(0x44948282);
  static Color LightTextColor = const Color(0xff000000);
  const AppTheme._();


  static final lighttheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: LightPrimaryColor,
      backgroundColor: LightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(backgroundColor: LightPrimaryColor),
      colorScheme: ColorScheme.light(secondary: LightSecondryColor),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: LightBackgroundColor))
  );

  static Brightness get currentSystemBrightness => SchedulerBinding.instance.window.platformBrightness;
  static setStatusBarAndNavigationBarColors(ThemeMode themeMode){
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: LightBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent
    ));
  }
}