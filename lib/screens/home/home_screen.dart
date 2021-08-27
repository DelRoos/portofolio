import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/screens/home/components/home_banner.dart';
import 'package:porto_folio/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      childrens: [
        HomeBanner(),
      ],
    );
  }
}
