import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/screens/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.childrens}) : super(key: key);
  final List<Widget> childrens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...childrens,
                    ],
                  ),
                ),
              ),
              SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
