import 'package:flutter/material.dart';
import 'package:porto_folio/constant.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator(
      {Key? key, required this.label, required this.percentage})
      : super(key: key);
  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            duration: defaultDuration,
            tween: Tween<double>(begin: 0, end: percentage),
            builder: (contex, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                  value: value,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt().toString()}%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {Key? key, required this.label, required this.percentage})
      : super(key: key);
  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        duration: defaultDuration,
        tween: Tween<double>(begin: 0, end: percentage),
        builder: (contex, double value, child) => Column(
          // fit: StackFit.expand,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "${(value * 100).toInt().toString()}%",
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              color: primaryColor,
              value: value,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
