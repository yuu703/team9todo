import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'app_background.dart';

//AppBackground appBackground = AppBackground();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: const Text('My Page'),
          backgroundColor: Colors.blue.withOpacity(0.3),
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   decoration: new BoxDecoration(
            //     image: new DecorationImage(
            //       image: new AssetImage('images/cats.png'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('images/IMG_4088.jpeg'),
            ),
            Text(
              'Benesse さん',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Text(
                'Number of complete tasks',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.black,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 400.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 0.5, horizontal: 20.0),
                //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle_rounded,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Complete                                      22',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            SizedBox(
              height: 20.0,
              width: 400.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 0.5, horizontal: 20.0),
                //margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.not_interested,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Not Complete                               5',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro'),
                  ),
                )),
            SizedBox(
              height: 20.0,
              width: 400.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 13,
              width: 250,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  _launchURL();
                },
                child: Text(
                  'Classiサイトへはこちら',
                  style: TextStyle(
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//マイページ内のURLからサイトに飛ぶためのコード
_launchURL() async {
  const url = 'https://classi.jp/usage/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// @override
// Widget build(BuildContext context) {
//   return LayoutBuilder(builder: (context, contraint) {
//     final height = contraint.maxHeight;
//     final width = contraint.maxWidth;
//
//     return Stack(
//       children: <Widget>[
//         Container(
//           color: Colors.pink,
//         ),
//         Positioned(
//           top: height * 0.20,
//           left: height * 0.35,
//           child: Container(
//             height: height,
//             width: width,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white.withOpacity(0.4),
//             ),
//           ),
//         ),
//         Positioned(
//           top: -height * 0.10,
//           left: -height * 0.39,
//           child: Container(
//             height: height,
//             width: width,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white.withOpacity(0.2),
//             ),
//           ),
//         ),
//       ],
//     );
//   });
// }
//
//
// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 6) {
//       hexColor = 'FF' + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
//
