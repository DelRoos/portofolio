import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
            ),
            Spacer(),
            Text(
              "Delano Toungsi",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "I'am a flutter mobile develloper. \nI'am doing api rest",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
