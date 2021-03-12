import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ten_sports/pages/home_page_rows.dart';
import 'package:ten_sports/widgets/drawer.dart';
import 'package:ten_sports/widgets/slider.dart';

final keyIsFirstLoaded = 'is_first_loaded';
final String alertDetail =
    'پہلی بار تمام چینلز کو ڈیٹا پیکج یا وائی فائی کے ساتھ چلائیں..\n پھر اس کے بعد آپ کسی بھی وقت بغیر پیکیج کے دیکھ سکتے ہیں۔\n چینلز اپڈیٹ ہونے  کے بعد بھی ایسا ہی کریں.';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogIfFirstLoaded(context));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Islamic',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              IslamicChannels(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'News',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              NewsChannels(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Entertainment',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              EntertainmentChannels(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Kids',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              KidsChannels(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Movie',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              MoviesChannels(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Music',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              MusicChannels(),
            ],
          ),
        ),
      ),
    );
  }
}
//
// _upDateApp() async {
//   const url =
//       'https://play.google.com/store/apps/details?id=com.FaiziApps.FaiziTv';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

showDialogIfFirstLoaded(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
  if (isFirstLoaded == null) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(left: 5.0,right: 5.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text("نوٹس  ⚠",textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(fontFamily: 'bold',fontSize: 25.0,color: Colors.red),),
          content: Text(
            alertDetail,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'normal',
              fontSize: 22.0,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              child: Icon(CupertinoIcons.check_mark_circled_solid),
              onPressed: () {
                Navigator.of(context).pop();
                prefs.setBool(keyIsFirstLoaded, false);
              },
            ),
          ],
        );
      },
    );
  }
}
