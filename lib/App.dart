import 'package:day3_all_widgets_try/Home/Widgets/AboutDialogDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AbsorbPointerDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AboutListTileDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AlertDialogDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AlignDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AnimatedAlignDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AnimatedBuilderDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AnimatedContainerDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AnimatedCrossFadeDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AnimatedIconDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AspectRatioDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/AutoCompleteDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/BannerDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/BottomNavigationDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/BottomSheetDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/BuilderDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/CardDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/CheckBoxDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/CheckBoxListTileDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/ChipDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/ChoiceChipDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/CircularProgressIndicatorDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/CloseButtonDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/ColorFilteredDemo.dart';
import 'package:day3_all_widgets_try/Home/Widgets/ColoredBoxDemo.dart';


import 'package:flutter/material.dart';
import 'Home/Home.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        'home':(context) => Home(),
        'aboutdialogdemo' :(context) => AboutDialogDemo(),
        'aboutlisttile':(context) => AboutListTileDemo(),
        'absorbpointer':(context) => AbsorbPointerDemo(),
        'alertdialog':(context) => AlertDialogDemo(),
        'align':(context) => AlignDemo(),
        'animatedalign':(context) => AnimatedAlignDemo(),
        'animatedbuilder':(context) => AnimatedBuilderDemo(),
        'animatedcontainer':(context) => AnimatedContainerDemo(),
        'animatedcrossfade':(context) => AnimatedCrossFadeDemo(),
        'animatedicon': (context) => AnimatedIconDemo(),
        'aspectratio':(context) => AspectRatioDemo(),
        'autocomplete':(context) => AutoCompleteDemo(),
        'banner':(context) => BannerDemo(),
        'bottomnavigationbar' :(context) => BottomNavigationDemo(),
        'bottomsheet':(context) => BottomSheetDemo(),
        'builder':(context) => BuilderDemo(),
        'card':(context) => CardDemo(),
        'checkbox':(context) => CheckBoxDemo(),
        'checkboxlisttile':(context) => CheckBoxListTileDemo(),
        'chip':(context) => ChipDemo(),
        'choicechip':(context) => ChoiceChipDemo(),
        'circularprogressindicator':(context) => CircularProgressIndicatorDemo(),
        'closebutton':(context) => CloseButtonDemo(),
        'coloredbox':(context) => ColoredBoxDemo(),
        'colorfiltered':(context) => ColorFilteredDemo()


      },
    );
  }
}
