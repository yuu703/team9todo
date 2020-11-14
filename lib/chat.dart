import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                print('back button pressed');
              }),
          title: Text(
            '英単語2500 p244-250',
            style: TextStyle(fontSize: 24),
          ),
          backgroundColor: Colors.pink[200],
        ),
        backgroundColor: Colors.pink[50],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChatPage(),
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

String messageText;

class _ChatPageState extends State<ChatPage> {
  List<Container> chatList = [];
  final messageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/IMG_4088.jpeg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          '徹夜は良くない',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Colors.brown,
                            fontSize: 18.0,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/IMG_4088.jpeg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          '睡眠は大事',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Colors.brown,
                            fontSize: 18.0,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          '急いでもいいことはない',
                          style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Colors.brown,
                            fontSize: 18.0,
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('images/IMG_5897.jpeg'),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                // obscureText: true,
                controller: messageTextController,
                onChanged: (value) {
                  messageText = value;
                },
                cursorColor: Colors.pink[100],
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.pink[100],
                  hoverColor: Colors.pink[100],
                  border: OutlineInputBorder(),
                  labelText: 'コメント',
                ),
              ),
            ),
            FlatButton(
              height: 60,
              minWidth: 30,
              color: Colors.pink[300],
              onPressed: () {
                print(messageText);
                messageTextController.clear();
              },
              child: Icon(
                Icons.send,
                color: Colors.pink[50],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
