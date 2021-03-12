import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllChannels extends StatelessWidget {
  Card channelBox(
    Image image,
  ) {
    return Card(
      clipBehavior: Clip.antiAlias, //very important
      child: Container(
        child: image,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: GridView(
          padding: EdgeInsets.all(10.0),
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/madni');
                },
                child: channelBox(Image.asset(
                  'assets/madni.jpg',
                  fit: BoxFit.cover,
                ))),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/makkah');
                },
                child: channelBox(
                    Image.asset('assets/makkah.jpg', fit: BoxFit.cover))),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/madina');
                },
                child: channelBox(
                    Image.asset('assets/madinah.jpg', fit: BoxFit.cover))),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/samaa');
              },
              child: channelBox(
                Image.asset('assets/samaa.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/express');
              },
              child: channelBox(
                Image.asset('assets/express.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/bol');
              },
              child: channelBox(
                Image.asset('assets/bol.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/humnews');
              },
              child: channelBox(
                Image.asset('assets/humnews.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/newsone');
              },
              child: channelBox(
                Image.asset('assets/newsone.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/publicnews');
              },
              child: channelBox(
                Image.asset('assets/publicnews.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/dawn');
              },
              child: channelBox(
                Image.asset('assets/dawn.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/abbtakk');
              },
              child: channelBox(
                Image.asset('assets/abbtakk.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/neo');
              },
              child: channelBox(
                Image.asset('assets/neo.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/geo');
              },
              child: channelBox(
                Image.asset('assets/geo.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cnn');
              },
              child: channelBox(
                Image.asset('assets/cnn.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/dunya');
              },
              child: channelBox(
                Image.asset('assets/dunya.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/aajnews');
              },
              child: channelBox(
                Image.asset('assets/aaj.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gnn');
              },
              child: channelBox(
                Image.asset('assets/gnn.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/rohi');
              },
              child: channelBox(
                Image.asset('assets/rohi.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/city41');
              },
              child: channelBox(
                Image.asset('assets/city41.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/city42');
              },
              child: channelBox(
                Image.asset('assets/city42.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/dw');
              },
              child: channelBox(
                Image.asset('assets/dw.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hum');
              },
              child: channelBox(
                Image.asset('assets/humtv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/aplus');
              },
              child: channelBox(
                Image.asset('assets/aplus.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/geoent');
              },
              child: channelBox(
                Image.asset('assets/geotv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ptvhome');
              },
              child: channelBox(
                Image.asset('assets/ptvhome.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/humsitary');
              },
              child: channelBox(
                Image.asset('assets/humsitary.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hummasala');
              },
              child: channelBox(
                Image.asset('assets/hummasala.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/expressent');
              },
              child: channelBox(
                Image.asset('assets/expresstv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/urdu1');
              },
              child: channelBox(
                Image.asset('assets/urduone.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/tvone');
              },
              child: channelBox(
                Image.asset('assets/tvone.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/filmax');
              },
              child: channelBox(
                Image.asset('assets/filmax.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/filmworld');
              },
              child: channelBox(
                Image.asset('assets/filmworld.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/8xm');
              },
              child: channelBox(
                Image.asset('assets/8xm.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/jalwa');
              },
              child: channelBox(
                Image.asset('assets/jalwa.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ltn');
              },
              child: channelBox(
                Image.asset('assets/ltn.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/aajtv');
              },
              child: channelBox(
                Image.asset('assets/aajtv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/apnachannel');
              },
              child: channelBox(
                Image.asset('assets/apnachannel.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/boltv');
              },
              child: channelBox(
                Image.asset('assets/boltv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/tvone');
              },
              child: channelBox(
                Image.asset('assets/tvone.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/play');
              },
              child: channelBox(
                Image.asset('assets/play.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/seetv');
              },
              child: channelBox(
                Image.asset('assets/seetv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/movieone');
              },
              child: channelBox(
                Image.asset('assets/movieone.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cn');
              },
              child: channelBox(
                Image.asset('assets/cn.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/championtv');
              },
              child: channelBox(
                Image.asset('assets/championtv.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/discovery');
              },
              child: channelBox(
                Image.asset('assets/discovery.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/discoverykids');
              },
              child: channelBox(
                Image.asset('assets/discoverykids.jpg', fit: BoxFit.cover),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/tensports');
              },
              child: channelBox(
                Image.asset('assets/tensports.jpg', fit: BoxFit.cover),
              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0),
        ),
      ),
    );
  }
}
