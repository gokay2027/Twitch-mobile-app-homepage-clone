import "package:flutter/material.dart";
import 'package:twitchhomepageclone/appbar.dart';
import 'package:twitchhomepageclone/constants.dart';

class HomePage extends StatelessWidget {
  var followedWidgets = [
    FollowedGameCategoriesWidget(
      gameName: "CS:GO",
      pngName: "assets/csgo.jpg",
      gameViewer: "523",
    ),
    FollowedGameCategoriesWidget(
      gameViewer: "10234",
      pngName: "assets/lol.jpeg",
      gameName: "League of Legends",
    ),
    FollowedGameCategoriesWidget(
      gameName: "Warframe",
      gameViewer: "2316",
      pngName: "assets/warframe.png",
    ),
    FollowedGameCategoriesWidget(
      gameName: "COD:Warzone",
      gameViewer: "431",
      pngName: "assets/warzone.jpeg",
    ),
  ];

  var liveChannels = [
    LiveChannels(),
    LiveChannels(),
    LiveChannels(),
    LiveChannels()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 18.0,
                        top: MediaQuery.of(context).size.height / 12),
                    child: Text(
                      "Followings",
                      style: TextStyle(
                          color: renk,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, top: 21, bottom: 10),
                    child: Text(
                      "Following Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: followedWidgets.length,
                        itemBuilder: (context, index) {
                          return followedWidgets[index];
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Live Channels",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 11),
                    child: Container(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return liveChannels[index];
                        },
                        itemCount: liveChannels.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopAppBar(),
              bottombar(),
            ],
          )
        ],
      ),
    );
  }
}

class LiveChannels extends StatelessWidget {
  const LiveChannels({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      color: Colors.black,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 8,
                  color: Colors.white,
                  child: Image.asset(
                    "assets/lolgame.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          "5577",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Streamer Username",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  "Description",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "Game Name",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white54),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FollowedGameCategoriesWidget extends StatelessWidget {
  String gameName, gameViewer, pngName;

  FollowedGameCategoriesWidget({this.gameName, this.gameViewer, this.pngName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.white,
            child: Image.asset(
              pngName,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            child: Text(
              "${gameName}",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  maxRadius: 6,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3.5,
                child: Text(
                  "${gameViewer}",
                  style: TextStyle(color: Colors.white54, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
