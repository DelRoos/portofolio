import 'package:porto_folio/components/knowledge_text.dart';
import 'package:porto_folio/constant.dart';

import 'package:flutter/material.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Dart, flutter"),
        KnowledgeText(text: "Git githu, gitLab"),
        KnowledgeText(text: "Python django, api Rest"),
        KnowledgeText(text: "Sass scss, css"),
      ],
    );
  }
}
