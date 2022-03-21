import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class StartDrawer extends StatelessWidget {
  const StartDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              title: 'Dashboard',
              assetPath: 'assets/icons/menu_dashboard.svg',
              onTap: () {},
            ),
            DrawerListTile(
                title: 'Transaction',
                assetPath: 'assets/icons/menu_tran.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Task',
                assetPath: 'assets/icons/menu_task.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Documents',
                assetPath: 'assets/icons/menu_doc.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Store',
                assetPath: 'assets/icons/menu_store.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Notifications',
                assetPath: 'assets/icons/menu_notification.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Profile',
                assetPath: 'assets/icons/menu_profile.svg',
                onTap: () {}),
            DrawerListTile(
                title: 'Settings',
                assetPath: 'assets/icons/menu_setting.svg',
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
