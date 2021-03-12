import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  // final ams = AdMobService();
  @override
  Widget build(BuildContext context) {
    // InterstitialAd newAd = ams.interstitialAd();
    // newAd.load();
    //
    // void interAd() {
    //   newAd.show(
    //     anchorType: AnchorType.bottom,
    //     anchorOffset: 0.0,
    //     horizontalCenterOffset: 0.0,
    //   );
    // }
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              curve: Curves.bounceInOut,
              child: Icon(
                CupertinoIcons.tv_circle_fill,
                color: Colors.white,
                size: 100,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF00F260),Color(0xFF0575E6)],),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, "/allchannels");
              },
              leading: Icon(
                CupertinoIcons.tv,
                color: Colors.white,
              ),
              title: Text(
                'All Channels',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.popAndPushNamed(context, "/settings");
              },
              leading: Icon(
                CupertinoIcons.info,
                color: Colors.white,
              ),
              title: Text(
                'App info',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white60,
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 0.0),
              child: Text(
                'Applications',
                style:
                TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: () {
                _rateApp();
                Navigator.of(context).pop();
              },
              leading: Icon(
                CupertinoIcons.star,
                color: Colors.white,
              ),
              title: Text(
                'Rate App',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                Share.share(shareApp);
              },
              leading: Icon(
                CupertinoIcons.arrowshape_turn_up_right,
                color: Colors.white,
              ),
              title: Text(
                'Share this App',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                // interAd();
                _reportBugHelp();
                Navigator.of(context).pop();
              },
              leading: Icon(
                CupertinoIcons.question_circle,
                color: Colors.white,
              ),
              title: Text(
                'Report bug & Help',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                SystemNavigator.pop();
              },
              leading: Icon(
                Icons.exit_to_app_sharp,
                color: Colors.white,
              ),
              title: Text(
                'Exit',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_rateApp() async {
  const url =
      'https://play.google.com/store/apps/details?id=com.FaiziApps.FaiziTv';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_reportBugHelp() async {
  const url =
      'https://wa.me/message/XSTFUGCVDAYEO1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

const String shareApp =
    "Download Faizi TV app to watch unlimited free TV channels....\n\n"
    "Don't forget to rate app on Play store...\n"
    "https://play.google.com/store/apps/details?id=com.FaiziApps.FaiziTv";