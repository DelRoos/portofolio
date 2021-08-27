import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/models/Recommandation.dart';
import 'package:porto_folio/screens/home/components/recommandation_card.dart';

class ListRecommandations extends StatelessWidget {
  const ListRecommandations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommandations",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommandationCard(
                      recommendation: demo_recommendations[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
