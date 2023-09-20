/// Display the events page.
/// Display upcoming events
/// Display recent past events
/// Display a calender of the current month

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/desktop-view-admin/widgets/header.dart';


class EventsPage extends ConsumerWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Header(title: 'Events'),
            SizedBox(height:20),
            
          ],
        ),
      ),
    );
  }
}
