import 'package:flutter/material.dart';
import 'package:school_management_system/pages/timetable.dart';
import 'package:school_management_system/pages/student_list.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      // padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(accountName: Text('STANFORD PUBLIC SCHOOL'),
            accountEmail: Text('Email: stanford123@gamil.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image(
                image: AssetImage("assets/images/stanford.jpg"),
              width: 90,
                  height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
         ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Students List'),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> StudentList()));
          }
        ),
        ListTile(
          leading: Icon(Icons.schedule),
          title: Text('Timetable'),
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentsTimeTable()));
          },
        ),
        ListTile(
          leading: Icon(Icons.money),
          title: Text('Fees Structure'),
          onTap: ()=>null,
        ),
        ListTile(
          leading: Icon(Icons.library_add),
          title: Text('Library'),
          onTap: ()=>null,
        ),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text('Book List'),
          onTap: ()=>null,
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notification'),
          onTap: ()=>null,
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('Policies'),
          onTap: ()=>null,
        ),
        ListTile(
          leading: Icon(Icons.dark_mode),
          title: Text('Themes'),
          onTap: ()=>null,
            // Navigator.push(context,MaterialPageRoute(builder: (context)=> ThemeChange()));
        ),

        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Feedback'),
          onTap: ()=>null,
        ),
      ],
    ),
    );
  }
}
