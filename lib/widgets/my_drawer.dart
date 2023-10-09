import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Mandar Kulkarni"),
                accountEmail: Text("kmandar015@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/1.png'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
