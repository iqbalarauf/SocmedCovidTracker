import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Justin Clare'),
            accountEmail: Text('justclare@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'http://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Riwayat Perjalanan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Riwayat Perjalanan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text('Lapor Diri'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Informasi COVID-19'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log out'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}


