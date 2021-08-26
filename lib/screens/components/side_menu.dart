import 'package:flutter/material.dart';
import 'package:porto_folio/components/animated_progress_bar.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/screens/components/area_info_text.dart';
import 'package:porto_folio/screens/components/coding.dart';
import 'package:porto_folio/screens/components/personal_info.dart';
import 'package:porto_folio/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          PersonalInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(text: "Ngousso", title: "Residence"),
                  AreaInfoText(text: "Yaounde", title: "City"),
                  AreaInfoText(text: "19", title: "Age"),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Codings(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
