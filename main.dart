import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Navigation Drawer',
      ),
      backgroundColor: const Color(0xff435d7a),
    ),
    drawer: Drawer(
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
        ],
      ),
    ),
  );
}