import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Notif extends StatelessWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
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
          icon: Icon(Icons.lock_rounded, color: Colors.black, size: 20.0),
        ),
      ),
      body: Container(
        child: Text(
          'WORK IN PROGRESS :(',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
        ),
      ),
    );
  }
}
