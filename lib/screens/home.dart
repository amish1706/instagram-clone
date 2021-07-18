import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Text('Instagram',
                      style: TextStyle(
                          fontFamily: 'Billabong',
                          fontSize: 70.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black))),
              SizedBox(
                height: 150.0,
              ),
              SizedBox(
                height: 44.0,
                width: 307.0,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text('Log in', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                ),
              ),
              SizedBox(
                height: 49.0,
              ),
              SizedBox(
                height: 44.0,
                width: 307.0,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text('Sign up'),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: Colors.blueAccent, width: 1)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
