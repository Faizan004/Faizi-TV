import 'package:better_player/better_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChampionTv extends StatefulWidget {
  @override
  _MyVideoState createState() => _MyVideoState();
}

class _MyVideoState extends State<ChampionTv> {
  List<DeviceOrientation> deviceOrientationsAfterFullScreen = const [DeviceOrientation.portraitUp];
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String videoUrl = '';
  @override
  void initState() {
    super.initState();
    firestore
        .collection("championtv")
        .get()
        .then((QuerySnapshot querySnapshot) => {
      querySnapshot.docs.forEach((doc) {
        videoUrl = doc["a"];
        {
          setState(() {});
        }
      }),
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BetterPlayer.network(
              videoUrl,
              betterPlayerConfiguration: BetterPlayerConfiguration(
                allowedScreenSleep: false,
                deviceOrientationsAfterFullScreen: deviceOrientationsAfterFullScreen,
                controlsConfiguration: BetterPlayerControlsConfiguration(
                    pauseIcon: CupertinoIcons.pause_circle_fill,
                    playIcon: CupertinoIcons.play_circle_fill,
                    unMuteIcon: CupertinoIcons.volume_off,
                    muteIcon: CupertinoIcons.volume_up,
                    enableProgressBar: false,
                    enableSkips: false,
                    enableOverflowMenu: false),
                autoPlay: true,
                aspectRatio: 16 / 9,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/championtv.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 10),
                  child: Text(
                    'Champion Tv',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Champion TV is its own kind first-ever HD Kids Channels in Pakistan. which is going to broadcast 5 Times Azan in Kid’s Voice. Champion TV’s content is based on the English & Urdu language. Near Soon we are also bringing up Kids Turkish Islamic content with Urdu Dubbing on Champion TV',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
