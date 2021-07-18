import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 88.0,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 32.28,
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Text('Instagram',
                style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 70.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 44.60,
              width: 375.93,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(38, 38, 38, 0.2))),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 44.60,
              width: 375.93,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(38, 38, 38, 0.2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 19, 16, 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: Text('Forgot Password?')),
              ),
            ),
            SizedBox(
              height: 44.60,
              width: 375.93,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bottom_Nav()),
                  );
                },
                child: Text('Log in', style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(55, 151, 239, 0.2)),
                ),
              ),
            ),
            SizedBox(
              height: 75.71,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.54),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Divider(
                      height: 1.01,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 34.52),
                        child: Text('OR',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 0.4))),
                      )),
                  Expanded(
                    flex: 3,
                    child: Divider(
                      height: 1.01,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                ),
                TextButton(
                  child: Text('Sign up'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 61.93,
            ),
            Divider(height: 1.0, color: Color.fromRGBO(0, 0, 0, 0.5)),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(130, 15, 130, 7),
                child: Text('Instagram от Facebook',
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
