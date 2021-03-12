// import 'dart:io';
// import 'package:firebase_admob/firebase_admob.dart';
//
// class AdMobService {
//
//   String getAdMobAppId() {
//     if (Platform.isIOS) {
//       return '';
//     } else if (Platform.isAndroid) {
//       return 'ca-app-pub-4702339810538432~1848124906';
//     }
//     return null;
//   }
//
//   static String _getBannerAdId() {
//     if (Platform.isIOS) {
//       return '';
//     } else if (Platform.isAndroid) {
//       return "ca-app-pub-4702339810538432/2119587640";
//     }
//     return null;
//   }
//
//   String getInterstitialAdId() {
//     if (Platform.isIOS) {
//
//       return '';
//     } else if (Platform.isAndroid) {
//
//       return "ca-app-pub-4702339810538432/6597695182";
//     }
//     return null;
//   }
//
//
//   InterstitialAd interstitialAd() {
//     return InterstitialAd(
//       adUnitId: getInterstitialAdId(),
//       listener: (MobileAdEvent event) {
//         print("InterstitialAd event is $event");
//       },
//     );
//   }
//
//
//
//
//   static BannerAd _homeBannerAd;
//
//
//   static BannerAd _getHomePageBannerAd() {
//     return BannerAd(
//         adUnitId: _getBannerAdId(),
//         size: AdSize.smartBanner,
//         targetingInfo: MobileAdTargetingInfo(
//           childDirected: true,
//           nonPersonalizedAds: true,
//         )
//     );
//   }
//
//
//   static void showHomeBannerAd() {
//     if ( _homeBannerAd == null ) _homeBannerAd = _getHomePageBannerAd();
//     _homeBannerAd
//       ..load()
//       ..show(anchorType: AnchorType.bottom,);
//   }
//
//   static void hideHomeBannerAd() async {
//     await _homeBannerAd.dispose();
//     _homeBannerAd = null;
//   }
//
//
// }