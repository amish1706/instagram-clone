import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';
import 'package:insta/Styles/Dmtile.dart';

class DM extends StatelessWidget {
  const DM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bottom_Nav()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: true,
        title: TextButton.icon(
          label: Text(
            'jacob_w',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          onPressed: () {},
          icon:
              Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 30.0),
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
            size: 30.0,
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 36.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    hintText: 'Search',
                    fillColor: Color.fromRGBO(118, 118, 128, 0.12),
                    filled: true,
                    // enabled: false,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.0),
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              DMTile(
                  src: 'assets/DM1.png',
                  title: 'joshua_1',
                  subtitle: 'Have a nice Day!',
                  story_ring: true,
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  story_ring: true,
                  src: 'assets/DM2.png',
                  title: 'martin_rond',
                  subtitle: 'Great!!',
                  seentime: '15m',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  src: 'assets/DM3.jpg',
                  title: 'katherine_gomez',
                  subtitle: 'Don\'t try to contact me ever again :(',
                  seentime: '20m',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  story_ring: true,
                  src: 'assets/DM4.png',
                  title: 'andrewww_',
                  subtitle: 'That\'s a great idea!!, Go ahead',
                  seentime: '55m',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  story_ring: true,
                  src: 'assets/DM5.png',
                  title: 'jacq_lean_',
                  subtitle: 'Hahahahaha',
                  seentime: '1h',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  src: 'assets/DM6.png',
                  title: 'archie_',
                  subtitle: 'Yeah, I saw that',
                  seentime: '1h',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  src: 'assets/DM7.png',
                  title: 'hugh_jackman',
                  subtitle: 'I\'ll get back to you.',
                  seentime: '5h',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  src: 'assets/DM8.png',
                  title: 'veronica_lodge',
                  subtitle: 'How dare you???',
                  seentime: '6h',
                  icon: Icons.camera_alt_outlined),
              DMTile(
                  src: 'assets/DM9.png',
                  title: 'jones_fp',
                  subtitle: 'I know what he has done.',
                  seentime: '12h',
                  icon: Icons.camera_alt_outlined),
            ],
          ))
        ],
      ),
      persistentFooterButtons: <Widget>[
        Center(
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Color.fromRGBO(56, 151, 240, 1),
              ),
              label: Text(
                'Camera',
                style: TextStyle(
                    color: Color.fromRGBO(56, 151, 240, 1), fontSize: 13.0),
              )),
        )
      ],
    );
  }
}
