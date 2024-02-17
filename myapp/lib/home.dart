import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Drawer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://www.inserito.com/wp-content/uploads/2020/08/flutter-logo.png',
                        width: 80,
                        height: 80,
                        color: Colors.black,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    Text(
                      "\nFlutter",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text("Notification"),
                    leading: Icon(Icons.notifications),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_right),
                  ),
                  ListTile(
                    title: Text("Log Out"),
                    leading: Icon(Icons.logout),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
