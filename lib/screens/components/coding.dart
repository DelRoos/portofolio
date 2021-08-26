import 'package:flutter/material.dart';
import 'package:porto_folio/components/animated_progress_bar.dart';
import 'package:porto_folio/constant.dart';

class Codings extends StatelessWidget {
  const Codings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Codings",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        // SizedBox(height: defaultPadding),
        AnimatedLinearProgressIndicator(label: "Dart", percentage: 0.5),
        AnimatedLinearProgressIndicator(label: "Python", percentage: 0.8),
        AnimatedLinearProgressIndicator(label: "HTML", percentage: 0.9),
        AnimatedLinearProgressIndicator(label: "JavaScript", percentage: 0.5),
        AnimatedLinearProgressIndicator(label: "CSS", percentage: 0.4),
      ],
    );
  }
}
