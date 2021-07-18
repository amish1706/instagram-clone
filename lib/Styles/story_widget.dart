import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/Styles/gradient_ring_widget.dart';

class Story_icon extends StatelessWidget {
  final profile_pic;
  final label;

  const Story_icon({Key? key, @required this.profile_pic, @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WGradientRing(
          width: 1.5,
          padding: 1.5,
          child: CircleAvatar(
            radius: 28.0,
            backgroundImage: AssetImage(profile_pic),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12.0),
        )
      ],
    );
  }
}
