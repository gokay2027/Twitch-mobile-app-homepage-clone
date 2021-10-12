import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 13,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Material(
              color: Colors.black,
              child: Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.photo_camera_front),
                    onPressed: () {},
                  ),
                  IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.inbox_outlined),
                      onPressed: () {}),
                  IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.message_outlined),
                      onPressed: () {}),
                  IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.search),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class bottombar extends StatefulWidget {
  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  bool following = true, discover = false, lookat = false, esport = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            color: Colors.black,
            child: bottomButton(
              color: following == true ? Colors.purple : Colors.white,
              func: () {
                setState(() {
                  following = true;
                  discover = false;
                  lookat = false;
                  esport = false;
                });
              },
              barName: "Takip ediliyor",
              icon: FontAwesomeIcons.heart,
            ),
          ),
          Material(
            color: Colors.black,
            child: bottomButton(
              color: discover == true ? Colors.purple : Colors.white,
              func: () {
                setState(() {
                  following = false;
                  discover = true;
                  lookat = false;
                  esport = false;
                });
              },
              barName: "Keşfet",
              icon: FontAwesomeIcons.compass,
            ),
          ),
          Material(
            color: Colors.black,
            child: bottomButton(
              color: lookat == true ? Colors.purple : Colors.white,
              func: () {
                setState(() {
                  following = false;
                  discover = false;
                  lookat = true;
                  esport = false;
                });
              },
              barName: "Gözat",
              icon: Icons.add_to_photos_rounded,
            ),
          ),
          Material(
            color: Colors.black,
            child: bottomButton(
              color: esport == true ? Colors.purple : Colors.white,
              func: () {
                setState(() {
                  following = false;
                  discover = false;
                  lookat = false;
                  esport = true;
                });
              },
              barName: "E-spor",
              icon: Icons.sports_esports,
            ),
          ),
        ],
      ),
    );
  }
}

class bottomButton extends StatelessWidget {
  IconData icon;
  String barName;
  Function func;
  Color color;
  bottomButton(
      {@required this.icon,
      @required this.barName,
      @required this.func,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: FaIcon(
            icon,
            color: color,
          ),
          onPressed: () {
            func();
          },
        ),
        Text(
          barName,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
