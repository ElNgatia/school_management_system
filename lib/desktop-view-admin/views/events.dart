/// Display the events page.
/// Display upcoming events
/// Display recent past events
/// Display a calender of the current month

import 'package:flutter/material.dart';

class EventsView extends StatelessWidget {
  const EventsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Events')),
    );
  }
}