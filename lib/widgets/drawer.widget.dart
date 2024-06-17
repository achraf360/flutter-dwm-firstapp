import 'package:dwm_app/widgets/drawer.header.dart';
import 'package:dwm_app/widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),
          MyDrawerItem(
            title: 'Home',
            itemIcon:
                Icon(Icons.home, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
          ),
          MyDrawerItem(
            title: 'Counter',
            itemIcon:
                Icon(Icons.ads_click, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },
          ),
          MyDrawerItem(
            title: 'Products',
            itemIcon:
                Icon(Icons.list, color: Theme.of(context).iconTheme.color),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
          ),
          /*ListTile(
            leading: Icon(Icons.home, color: Theme.of(context).iconTheme.color),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
            title: Text("Home", style: Theme.of(context).textTheme.bodyMedium),
          ),
          ListTile(
            leading:
                Icon(Icons.ads_click, color: Theme.of(context).iconTheme.color),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },
            title:
                Text("Counter", style: Theme.of(context).textTheme.bodyMedium),
          ),
          ListTile(
            leading: Icon(Icons.list, color: Theme.of(context).iconTheme.color),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, "/products");
            },
            title:
                Text("Products", style: Theme.of(context).textTheme.bodyMedium),
          )*/
        ],
      ),
    );
  }
}
