import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() => runApp(MyApp());

const List<Key> keys = [Key('Network'), Key('Network Dialog')];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text('Giffy Dailog'),
          ),
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String networkimg =
        'https://cdn.dribbble.com/users/750517/screenshots/8574989/media/7610aa397363fdfe6f2daa1145493aee.gif';
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            key: keys[0],
            child: Text('Network Giffy'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => NetworkGiffyDialog(
                        key: keys[1],
                        image: Image.network(
                          networkimg,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Ostrich Running",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        description: Text(
                          'animated ',
                          textAlign: TextAlign.center,
                        ),
                        entryAnimation: EntryAnimation.TOP_LEFT,
                        onOkButtonPressed: () {},
                      ));
            },
          ),
        ],
      ),
    );
  }
}
