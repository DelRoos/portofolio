import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    required this.text,
    required this.title,
  }) : super(key: key);
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
