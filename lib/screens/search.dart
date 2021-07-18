import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta/screens/all.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            height: 36.0,
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
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.control_camera_rounded,
              color: Colors.black,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 39.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.live_tv_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    label: Text("IGTV",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    label: Text("Shop",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Auto",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Style",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Model",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Sports",
                        style: TextStyle(
                            color: Color.fromRGBO(38, 38, 38, 1),
                            fontSize: 14.0)),
                    style: ButtonStyle(
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                    color: Color.fromRGBO(60, 60, 67, 0.18))))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Expanded(
              child: StaggeredGridView.countBuilder(
            itemCount: images.length,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                images[index],
                fit: BoxFit.cover,
              );
            },
            staggeredTileBuilder: (index) => new StaggeredTile.count(
                (index % 5 == 0) ? 2 : 1, (index % 5 == 0) ? 2 : 1),
          ))
        ],
      ),
    );
  }
}
