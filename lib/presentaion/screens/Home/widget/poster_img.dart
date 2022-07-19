import 'package:flutter/material.dart';

class PosterImg extends StatelessWidget {
  const PosterImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                 "https://i.pinimg.com/736x/9f/d2/7f/9fd27f76344fc38e23e6df89cec2792f.jpg"),
              fit: BoxFit.cover)),
    );
  }
}
