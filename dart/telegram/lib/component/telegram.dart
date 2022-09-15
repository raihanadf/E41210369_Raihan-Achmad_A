import 'package:flutter/material.dart';
import 'drawerscreen.dart';
import 'chartmodel.dart';

class Telegram extends StatefulWidget {
  const Telegram({super.key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerScreen(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(items[index].profileUrl.toString()),
                  child: Text(
                    items[index].name.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
              subtitle: Text(items[index].message.toString()),
              trailing: Text(items[index].time.toString()),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: items.length),
    );
  }
}
