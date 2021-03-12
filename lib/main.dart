import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ten_sports/channels_screens/entertainment/8xm.dart';
import 'package:ten_sports/channels_screens/entertainment/aajtv.dart';
import 'package:ten_sports/channels_screens/entertainment/aplus.dart';
import 'package:ten_sports/channels_screens/entertainment/apnachannel.dart';
import 'package:ten_sports/channels_screens/entertainment/boltv.dart';
import 'package:ten_sports/channels_screens/entertainment/championTv.dart';
import 'package:ten_sports/channels_screens/entertainment/cn.dart';
import 'package:ten_sports/channels_screens/entertainment/discovery.dart';
import 'package:ten_sports/channels_screens/entertainment/discoveryKids.dart';
import 'package:ten_sports/channels_screens/entertainment/expressent.dart';
import 'package:ten_sports/channels_screens/entertainment/filmax.dart';
import 'package:ten_sports/channels_screens/entertainment/filmworld.dart';
import 'package:ten_sports/channels_screens/entertainment/geoent.dart';
import 'package:ten_sports/channels_screens/entertainment/hum.dart';
import 'package:ten_sports/channels_screens/entertainment/hummasala.dart';
import 'package:ten_sports/channels_screens/entertainment/humsitary.dart';
import 'package:ten_sports/channels_screens/entertainment/jalwa.dart';
import 'package:ten_sports/channels_screens/entertainment/ltn.dart';
import 'package:ten_sports/channels_screens/entertainment/movieOne.dart';
import 'package:ten_sports/channels_screens/entertainment/play.dart';
import 'package:ten_sports/channels_screens/entertainment/ptvhome.dart';
import 'package:ten_sports/channels_screens/entertainment/seeTv.dart';
import 'package:ten_sports/channels_screens/entertainment/tvone.dart';
import 'package:ten_sports/channels_screens/entertainment/urdu1.dart';
import 'package:ten_sports/channels_screens/news/aaj.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ten_sports/channels_screens/news/city41.dart';
import 'package:ten_sports/channels_screens/news/city42.dart';
import 'package:ten_sports/channels_screens/news/rohi.dart';
import 'package:ten_sports/channels_screens/ten_sports.dart';
import 'package:ten_sports/pages/settings.dart';
import 'channels_screens/entertainment/8xm.dart';
import 'channels_screens/islamic/madina.dart';
import 'channels_screens/islamic/madni.dart';
import 'channels_screens/islamic/makkah.dart';
import 'channels_screens/news/abbtakk.dart';
import 'channels_screens/news/bol.dart';
import 'channels_screens/news/cnn.dart';
import 'channels_screens/news/dawn.dart';
import 'channels_screens/news/dunya.dart';
import 'channels_screens/news/dw.dart';
import 'channels_screens/news/express.dart';
import 'channels_screens/news/geo.dart';
import 'channels_screens/news/gnn.dart';
import 'channels_screens/news/hum_news.dart';
import 'channels_screens/news/neo.dart';
import 'channels_screens/news/news_one.dart';
import 'channels_screens/news/public_news.dart';
import 'channels_screens/news/samaa.dart';
import 'channels_screens/psl.dart';
import 'pages/all_channels.dart';
import 'pages/home_page.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(FaiziTv());
  });

}

class FaiziTv extends StatelessWidget {
  // Create the initialization Future outside of build
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          return MaterialApp(
            routes: {
              '/madni': (context) => Madni(),
              '/makkah': (context) => Makkah(),
              '/madina': (context) => Madina(),
              '/aajnews': (context) => AajNews(),
              '/abbtakk': (context) => AbbTakk(),
              '/bol': (context) => BolNews(),
              '/cnn': (context) => CNN(),
              '/dawn': (context) => Dawn(),
              '/dunya': (context) => Dunya(),
              '/dw': (context) => DW(),
              '/samaa': (context) => Samaa(),
              '/express': (context) => ExpressNews(),
              '/geo': (context) => Geo(),
              '/gnn': (context) => GNN(),
              '/humnews': (context) => HumNews(),
              '/neo': (context) => Neo(),
              '/newsone': (context) => NewsOne(),
              '/publicnews': (context) => PublicNews(),
              '/8xm': (context) => Xm(),
              '/aplus': (context) => Aplus(),
              '/cn': (context) => CN(),
              '/expressent': (context) => ExpressEnt(),
              '/filmax': (context) => Filmax(),
              '/filmworld': (context) => FilmWorld(),
              '/geoent': (context) => GeoEnt(),
              '/hum': (context) => Hum(),
              '/hummasala': (context) => HumMasala(),
              '/humsitary': (context) => HumSitary(),
              '/ltn': (context) => Ltn(),
              '/ptvhome': (context) => PtvHome(),
              '/tvone': (context) => TvOne(),
              '/urdu1': (context) => Urdu1(),
              '/allchannels': (context) => AllChannels(),
              '/homepage': (context) => HomePage(),
              '/tensports': (context) => TenSports(),
              '/settings': (context) => Settings(),
              '/rohi': (context) => Rohi(),
              '/city41': (context) => City41(),
              '/city42': (context) => City42(),
              '/aajtv': (context) => AajTv(),
              '/apnachannel': (context) => ApnaChannel(),
              '/boltv': (context) => BolTv(),
              '/championtv': (context) => ChampionTv(),
              '/discovery': (context) => Discovery(),
              '/discoverykids': (context) => DiscoveryKids(),
              '/jalwa': (context) => Jalwa(),
              '/movieone': (context) => MovieOne(),
              '/play': (context) => Play(),
              '/seetv': (context) => SeeTv(),
              '/psl': (context) => PSL(),
            },
            debugShowCheckedModeBanner: false,
            title: 'Faizi TV',
            home: HomePage(),
          );
        });
  }
}
