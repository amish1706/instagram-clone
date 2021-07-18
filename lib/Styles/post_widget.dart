import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final postprofile;
  final poster;
  final location;
  final postimage;
  final caption;

  const Post(
      {Key? key,
      @required this.postprofile,
      @required this.poster,
      @required this.location,
      @required this.postimage,
      @required this.caption})
      : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 54.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 11, 257, 11),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(widget.postprofile),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.poster,
                    style: TextStyle(fontSize: 13.0),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(widget.location, style: TextStyle(fontSize: 11.0))
                ],
              )
            ],
          ),
        ),
      ),
      Image(image: AssetImage(widget.postimage)),
      Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 15, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selected = !selected;
                      });
                      final snack =
                          SnackBar(content: Text('You liked this post!'));
                      if (selected) {
                        ScaffoldMessenger.of(context).showSnackBar(snack);
                      }
                    },
                    icon: Icon(
                      selected
                          ? (Icons.favorite_rounded)
                          : (Icons.favorite_outline_rounded),
                      size: 30.0,
                      color: selected ? Colors.redAccent : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.comment_outlined,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.send_outlined,
                    size: 30.0,
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 8.5,
                    backgroundImage: AssetImage('assets/auto_car.jpg'),
                  ),
                  SizedBox(
                    width: 6.5,
                  ),
                  Text('Liked by auto_car and 1,256,123 others',
                      style: TextStyle(fontSize: 13.0)),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 345.0,
                child: Row(
                  children: [
                    Text(
                      widget.poster,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Text(
                        widget.caption,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
