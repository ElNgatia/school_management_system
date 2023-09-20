import 'package:flutter/material.dart';
import 'package:school_management_system/core/auth_service.dart';
import 'package:school_management_system/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'drawer_list_tile.dart';

class SideBarNav extends StatefulWidget {
  SideBarNav({
    super.key,
    required this.onTileSelected,
    required int selectedIndex,
  });

  final Function(int) onTileSelected;

  @override
  State<SideBarNav> createState() => _SideBarNavState();
}

class _SideBarNavState extends State<SideBarNav> {
  final supabase = Supabase.instance.client;
  late final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("images/logo.png"),
            ),
            DrawerListTile(
              title: 'Dashboard',
              icon: Icons.dashboard,
              onSelected: () {
                widget.onTileSelected(0);
                print('pressed');
              },
            ),
            DrawerListTile(
              title: 'Students',
              icon: Icons.people,
              onSelected: () {
                widget.onTileSelected(1);
                setState(() {
                  selectedIndex = 1;
                });
                print('pressed 2');
              },
            ),
            DrawerListTile(
              title: 'Subjects',
              icon: Icons.book,
              onSelected: () {
                widget.onTileSelected(2);
              },
            ),
            DrawerListTile(
              title: 'Teachers',
              icon: Icons.person,
              onSelected: () {
                widget.onTileSelected(3);
              },
            ),
            DrawerListTile(
              title: 'Finance',
              icon: Icons.wallet,
              onSelected: () {
                widget.onTileSelected(4);
              },
            ),
            DrawerListTile(
              title: 'Events',
              icon: Icons.event,
              onSelected: () {
                widget.onTileSelected(5);
              },
            ),
            const SizedBox(height: 400),
            DrawerListTile(
              title: 'Settings',
              icon: Icons.settings,
              onSelected: () {
                widget.onTileSelected(6);
              },
            ),
            DrawerListTile(
              title: 'Logout',
              icon: Icons.logout,
              onSelected: () async {
                AuthService().signOut(context);
              },
              includeInCallback: true,
            )
          ],
        ),
      ),
    );
  }
}
