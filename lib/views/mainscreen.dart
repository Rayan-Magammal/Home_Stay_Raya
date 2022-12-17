

import 'package:flutter/material.dart';

import '../models/user.dart';
import 'loginscreen.dart';

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async =>false ,
      child: Scaffold(
              appBar: AppBar(title: const Text("Main Screen")),
              drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('name'),
              accountEmail: Text('rayan.mahfoud@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
            ),
            _createDrawerItem(
              icon: Icons.person,
              text: 'Profile',
              onTap: () {},
            ),
            _createDrawerItem(
              icon: Icons.book,
              text: 'Popular Hotels',
              onTap: () {},
            ),
            _createDrawerItem(
              icon: Icons.price_change_outlined,
              text: 'Price',
              onTap: () {},
            ),
            _createDrawerItem(
              icon: Icons.logout,
              text: 'Logout',
              onTap: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const LoginScreen()));},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Main screen'),
      ),
    ));
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}