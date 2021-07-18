import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/Styles/grey_ring.dart';

class DMTile extends StatelessWidget {
  final src;
  final title;
  final subtitle;
  final icon;
  final seentime;
  final story_ring;

  const DMTile(
      {Key? key,
      @required this.src,
      @required this.title,
      @required this.subtitle,
      @required this.icon,
      this.story_ring = false,
      this.seentime = 'now'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: GreyRing(
        width: story_ring ? 1.5 : 0,
        padding: story_ring ? 1.5 : 0,
        child: CircleAvatar(
          backgroundImage: AssetImage(src),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(subtitle), Text(seentime)],
      ),
      trailing: Icon(icon),
    );
  }
}
