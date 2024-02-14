import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class drawerScreen extends StatefulWidget {
  const drawerScreen({super.key});

  @override
  State<drawerScreen> createState() => _drawerScreenState();
}

class _drawerScreenState extends State<drawerScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: favourite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Recently viewed',
      style: optionStyle,
    ),
    Text(
      'Index 2: settings',
      style: optionStyle,
    ),
    Text(
      'Index 2:About us',
      style: optionStyle,
    ),
    Text(
      'Index 2: Help',
      style: optionStyle,
    ),
    Text(
      'Index 2:Sign out',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void updateUserInfo() {
    var user = FirebaseAuth.instance.currentUser;
    user?.updateProfile(displayName: "Abel", photoURL: "photoPath").then((value){
      print("Profile has been changed successfully");
      //DO Other compilation here if you want to like setting the state of the app
    }).catchError((e){
      print("There was an error updating profile");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUYvpg87v8etLyXF_M2nv8Vle4fwzGrAi1EQ&usqp=CAU"),),
        title: Text("user.name"),
      actions: [
        IconButton(onPressed: updateUserInfo , icon:
        Icon(Icons.person))
      ],
    ),


      body: Center(
        child: _widgetOptions[_selectedIndex],
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
          title: const Text('Home'),
          selected: _selectedIndex == 0,
          onTap: () {

            _onItemTapped(0);

            Navigator.pop(context);
          },
        ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {

                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('favourites'),
              selected: _selectedIndex == 0,
              onTap: () {

                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
        ListTile(
        title: const Text('Recently viewed'),
    selected: _selectedIndex == 1,
    onTap: () {

    _onItemTapped(1);

    Navigator.pop(context);
    },
        ),
            ListTile(
              title: const Text('Settings'),
              selected: _selectedIndex == 2,
              onTap: () {

                _onItemTapped(2);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About us'),
              selected: _selectedIndex == 0,
              onTap: () {

                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Help'),
              selected: _selectedIndex == 0,
              onTap: () {

                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sign out'),
              selected: _selectedIndex == 0,
              onTap: () {

                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {



                _onItemTapped(0);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

}
