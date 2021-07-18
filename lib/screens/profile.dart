import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';
import 'package:insta/Styles/grey_ring.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Container(),
        centerTitle: true,
        title: TextButton.icon(
          label: Text(
            'jacob_w',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          onPressed: () {},
          icon: Icon(Icons.lock_rounded, color: Colors.black, size: 20.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GreyRing(
                width: 2.5,
                padding: 2.5,
                child: CircleAvatar(
                  radius: 43.0,
                  backgroundImage: AssetImage('assets/profile1.jpg'),
                ),
              ),
              SizedBox(
                width: 35.0,
              ),
              Column(
                children: [
                  Text(
                    '20',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Posts',
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 35.0,
              ),
              Column(
                children: [
                  Text(
                    '1.5M',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Followers',
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: 35.0,
              ),
              Column(
                children: [
                  Text(
                    '200',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Following',
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'Jacob West',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'Automobile Photography',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'Everything is Designed',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FractionallySizedBox(
              widthFactor: 1,
              alignment: Alignment.center,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontSize: 13.0, color: Color.fromRGBO(38, 38, 38, 1)),
                  )),
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: posts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 1.0, crossAxisSpacing: 1.0),
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                posts[index],
                fit: BoxFit.cover,
              );
            },
          ))
        ],
      ),
    );
  }
}
