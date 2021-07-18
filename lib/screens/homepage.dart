import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';
import 'package:insta/Styles/post_widget.dart';
import 'package:insta/Styles/story_widget.dart';

class HomePg extends StatefulWidget {
  HomePg({Key? key}) : super(key: key);

  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  bool selected_1 = false;
  bool selected_2 = false;
  bool selected_3 = false;
  bool selected_4 = false;
  bool selected_5 = false;
  bool selected_6 = false;
  bool selected_7 = false;
  bool selected_8 = false;
  bool selected_9 = false;
  bool selected_10 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Instagram',
            style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        centerTitle: true,
        actions: [
          Icon(
            Icons.live_tv,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          IconButton(
            icon: Icon(Icons.send_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DM()),
              );
            },
            color: Colors.black,
          ),
          SizedBox(
            width: 15.0,
          )
        ],
      ),
      body: Column(
        children: [
          Divider(
            height: 0.33,
            color: Color.fromRGBO(166, 166, 170, 1.0),
          ),
          Container(
            height: 98.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'Your Story',
                      profile_pic: 'assets/profile1.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'rolls_royce',
                      profile_pic: 'assets/rolls.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'mercedes_amg',
                      profile_pic: 'assets/merc.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'lamborghini',
                      profile_pic: 'assets/lambo.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'porsche',
                      profile_pic: 'assets/porsche.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'audi',
                      profile_pic: 'assets/audi.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'bmw',
                      profile_pic: 'assets/bmw.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'mclaren_auto',
                      profile_pic: 'assets/mclaren.jpg',
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
                    child: Story_icon(
                      label: 'koeniggsegg',
                      profile_pic: 'assets/koen.jpg',
                    )),
              ],
            ),
          ),
          Divider(
            height: 0.33,
            color: Color.fromRGBO(60, 60, 67, 0.29),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Post(
                    postprofile: 'assets/porsche.jpg',
                    poster: 'porsche',
                    location: 'Tokyo, Japan',
                    postimage: 'assets/porsche_post.png',
                    caption: 'Goals!!!'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/merc.jpg',
                    poster: 'mercedes_amg',
                    location: 'Germany',
                    postimage: 'assets/merc_post.png',
                    caption: 'New Design, perfect fit in city streets'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/rolls.jpg',
                    poster: 'rolls_royce',
                    location: 'Great Britain',
                    postimage: 'assets/rolls_post.png',
                    caption: 'Luxury attracts luxury!!'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/koen.jpg',
                    poster: 'koeniggsegg',
                    location: 'Switzerland',
                    postimage: 'assets/koen_post.png',
                    caption: 'History is being made'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/lambo.jpg',
                    poster: 'lamborghini',
                    location: 'Italy',
                    postimage: 'assets/lambo_post.png',
                    caption:
                        'When brought beyond the limits, exclusivity becomes uniqueness.'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/bmw.jpg',
                    poster: 'bmw',
                    location: 'Germany',
                    postimage: 'assets/bmw_post.png',
                    caption: 'All eyes on you.'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/audi.jpg',
                    poster: 'audi',
                    location: 'USA',
                    postimage: 'assets/audi_post.png',
                    caption:
                        'The driver\'s seat can also be the ultimate destination.'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/mclaren.jpg',
                    poster: 'mclaren_auto',
                    location: 'London, UK',
                    postimage: 'assets/mclaren_post.png',
                    caption: 'Where would your #GTadventure take you?'),
                Divider(
                  height: 0.33,
                  color: Color.fromRGBO(166, 166, 170, 1.0),
                ),
                Post(
                    postprofile: 'assets/bugatti.png',
                    poster: 'bugatti',
                    location: 'London, UK',
                    postimage: 'assets/bugatti_post.PNG',
                    caption: 'Bugatti Centodieci'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
