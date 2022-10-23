import 'package:flutter/material.dart';
import 'package:money_management_system/screens/add_category.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Drawer(
        backgroundColor: Colors.green[400],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green[400],
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/money_save.jpg'))),
              child: const Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              tileColor: Colors.green[400],
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.category),
              tileColor: Colors.green[400],
              title: const Text(
                'Add Category',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              tileColor: Colors.green[400],
              title: const Text(
                'Account Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.transfer_within_a_station_rounded),
              tileColor: Colors.green[400],
              title: const Text(
                'Transfer Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              tileColor: Colors.green[400],
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddCategory(),
                  ),
                )
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              tileColor: Colors.green[400],
              title: const Text(
                'Exit',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
