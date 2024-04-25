import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Objetos'),
        ),
        body: MyListView(),
      ),
    );
  }
}


class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          subtitle: Text('Home'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          subtitle: Text('Profile'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Chat'),
          subtitle: Text('Chat'),
          onTap: () {
          },
        ),
      ],
    );
  }
}
