import 'package:flutter/material.dart';
import 'package:school_management_system/desktop-view-admin/pages/finance.dart';
import 'package:school_management_system/desktop-view-admin/pages/homepage.dart';
import 'package:school_management_system/desktop-view-admin/pages/students.dart';
import 'package:school_management_system/desktop-view-admin/pages/teachers.dart';
import 'package:school_management_system/pages/login_page.dart';

import '../desktop-view-admin/pages/events.dart';
import '../desktop-view-admin/pages/settings.dart';
import '../desktop-view-admin/pages/subjects.dart';
import '../desktop-view-admin/widgets/side_bar_nav.dart';

class AdminDashboard extends StatefulWidget {
   AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
   int selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    StudentsPage(),
    const SubjectsPage(),
    TeachersPage(),
    const FinancePage(),
    const EventsPage(),
    const SettingsPage(),
    // const LoginPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideBarNav(
                selectedIndex: selectedIndex,
                onTileSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });

                },
              ),
            ),
            Expanded(
              flex: 5,
              child: pages[selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
