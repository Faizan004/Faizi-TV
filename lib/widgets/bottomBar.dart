// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class BottomBar1 extends StatefulWidget {
//   @override
//   _AAAState createState() => _AAAState();
// }
//
// class _AAAState extends State<BottomBar1> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return  BottomNavyBar(
//
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       selectedIndex: _currentIndex,
//       backgroundColor: Colors.black54,
//       showElevation: true,
//       itemCornerRadius: 24,
//       curve: Curves.bounceInOut,
//       onItemSelected: (index) {
//         setState(() {
//           if(index==1){
//             Navigator.pushReplacementNamed(context, '/allchannels');
//           }
//         });
//       },
//       items: <BottomNavyBarItem>[
//         BottomNavyBarItem(
//           icon: Icon(CupertinoIcons.home),
//           title: Text('Home'),
//           activeColor: Colors.yellow[800],
//           textAlign: TextAlign.center,
//         ),
//         BottomNavyBarItem(
//           icon: Icon(CupertinoIcons.tv),
//           title: Text('Live TV'),
//           activeColor: Colors.purpleAccent,
//           textAlign: TextAlign.center,
//         ),
//
//       ],
//     );
//   }
// }
//
//
// class BottomBar2 extends StatefulWidget {
//   @override
//   _BottomBar2State createState() => _BottomBar2State();
// }
//
// class _BottomBar2State extends State<BottomBar2> {
//   int _currentIndex = 1;
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavyBar(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       selectedIndex: _currentIndex,
//       backgroundColor: Colors.black54,
//       showElevation: true,
//       itemCornerRadius: 24,
//       curve: Curves.bounceInOut,
//       onItemSelected: (index) {
//         setState(() {
//           if(index==0){
//             Navigator.pushReplacementNamed(context, '/homepage');
//           }
//         });
//       },
//       items: <BottomNavyBarItem>[
//         BottomNavyBarItem(
//           icon: Icon(CupertinoIcons.home),
//           title: Text('Home'),
//           activeColor: Colors.yellow[800],
//           textAlign: TextAlign.center,
//         ),
//         BottomNavyBarItem(
//           icon: Icon(CupertinoIcons.tv),
//           title: Text('Live TV'),
//           activeColor: Colors.purpleAccent,
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
//
