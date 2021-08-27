import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/screens/components/area_info_text.dart';
import 'package:porto_folio/screens/components/coding.dart';
import 'package:porto_folio/screens/components/knowledge.dart';
import 'package:porto_folio/screens/components/personal_info.dart';
import 'package:porto_folio/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
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
                    SizedBox(height: defaultPadding),
                    Knowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text("Download CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color)),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/dribble.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
