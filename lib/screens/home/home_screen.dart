import 'package:flutter/material.dart';
import 'package:porto_folio/screens/home/components/hight_light_infos.dart';
import 'package:porto_folio/screens/home/components/home_banner.dart';
import 'package:porto_folio/screens/home/components/list_projects.dart';
import 'package:porto_folio/screens/home/components/list_recommandation.dart';
import 'package:porto_folio/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      childrens: [
        HomeBanner(),
        HightLightInfo(),
        ListProjects(),
        ListRecommandations()
      ],
    );
  }
}
