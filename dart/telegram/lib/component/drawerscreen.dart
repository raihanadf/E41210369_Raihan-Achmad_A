import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("Raihan"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/12584890?v=4")),
              accountEmail: Text("haha@gmail.com")),
          DrawerListTile(
              iconData: Icons.group, title: "NewGroup", onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.lock, title: "New Secret Group", onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.lock, title: "New Secret Group", onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.lock, title: "New Secret Group", onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.lock, title: "New Secret Group", onTilePressed: () {}),
          DrawerListTile(
              iconData: Icons.lock, title: "New Secret Group", onTilePressed: () {}),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
