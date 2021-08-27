import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';
import 'package:porto_folio/responsive.dart';
import 'package:porto_folio/screens/home/components/animated_counter.dart';
import 'package:porto_folio/screens/home/components/hight_light.dart';

class HightLightInfo extends StatelessWidget {
  const HightLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 119, label: "k+"),
                      text: "Subscriber",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 30, label: "+"),
                      text: "Videos",
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 40, label: "+"),
                      text: "Github Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 13, label: "k+"),
                      text: "Starts",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(value: 119, label: "k+"),
                  text: "Subscriber",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 30, label: "+"),
                  text: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 40, label: "+"),
                  text: "Github Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 13, label: "k+"),
                  text: "Starts",
                ),
              ],
            ),
    );
  }
}
