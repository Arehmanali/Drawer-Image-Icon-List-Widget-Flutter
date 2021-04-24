import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mianDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Home Page';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.blue, // status bar color
    ));
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.lightGreenAccent),
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      backgroundColor: Colors.grey,
      drawer: MainDrawer(),
      body: ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  ProfileCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 350,
      padding: new EdgeInsets.all(0.0),
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 50,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/55204040?v=4'),
              ),
              title: Text('Rehman Ali', style: TextStyle(fontSize: 30.0)),
              subtitle: Text('Developer | Designer',
                  style: TextStyle(fontSize: 18.0)),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 0),
              margin: EdgeInsets.only(left: 40, right: 50),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Expanded(child: Text("Full Name")),
                      new Expanded(
                        child: TextField(
                          enabled: true,
                          decoration: InputDecoration(
                            hintText: 'Rehman Ali',
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Expanded(child: Text("Email")),
                      new Expanded(
                        child: TextField(
                          enabled: true,
                          decoration: InputDecoration(
                            hintText: 'merehmanali@gmail.com',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(child: Text("Contact")),
                      new Expanded(
                        child: TextField(
                          enabled: true,
                          decoration: InputDecoration(
                            hintText: '03495502045',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: RaisedButton(
                child: const Text('Save Setting'),
                onPressed: () async {
                  final ConfirmAction action =
                      await _asyncConfirmDialog(context);
                  print("Confirm Action $action");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ConfirmAction { Cancel, Accept }
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Save Settings?'),
        content: const Text('This will save the new setting on your phone.'),
        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          FlatButton(
            child: const Text('Save'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Accept);
            },
          )
        ],
      );
    },
  );
}
