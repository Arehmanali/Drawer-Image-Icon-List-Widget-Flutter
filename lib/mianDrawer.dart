import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(0.0),
          padding: EdgeInsets.all(0.0),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        UserAccountsDrawerHeader(
                          accountName: Text("Rehman Ali"),
                          accountEmail: Text("merehmanali@gmail.com"),
                          currentAccountPicture: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/55204040?v=4'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.red,
                    size: 50,
                  ),
                  title: Text("Todays"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  leading: Icon(Icons.inbox_rounded),
                  title: Text("Products"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Direct Materrials"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_offer_rounded),
                  title: Text("Direct Labour"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_offer_rounded),
                  title: Text("Overheads"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Customers"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Suppliers"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Consultant"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text("Help"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("logout"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
