import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/navbar.dart';
import 'package:school_management_system/pages/login.dart';
import 'package:school_management_system/user/home.dart';
import 'package:school_management_system/user/logout.dart';
import 'package:school_management_system/user/profile.dart';

class UserMain extends StatefulWidget {
  const UserMain({Key? key}) : super(key: key);

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int _selectedindex=0;
  static List<Widget>_widgetOption=<Widget>[
    Home(),
    ProfilePage(),
    Logout()
  ];
void _onItemTapped(int index){
  setState(() {
    _selectedindex=index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dashboard                              "),
            ElevatedButton(
              onPressed: () async =>{
                await FirebaseAuth.instance.signOut(),
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>login(),
              ),
                      (route) => false)
            }, child: Text('Logout'),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
            ),
          ],
        ),
      ),
      body: _widgetOption.elementAt(_selectedindex),
      bottomNavigationBar:BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon:Icon(Icons.home),
       label: 'Home',
    ),
          BottomNavigationBarItem(
          icon:Icon(Icons.person),
      label: 'Profile',
    ),
       BottomNavigationBarItem(
        icon:Icon(Icons.settings),
        label: 'Settings',

       ),
       ],
    currentIndex:_selectedindex,
    selectedItemColor: Colors.redAccent,
    onTap: _onItemTapped,
    ),
    );
  }
}
