// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/desktop-view-admin/widgets/header.dart';

import '../../widgets/event_calendar.dart';
import '../widgets/information_card.dart';
import '../../models/grid_numbers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Header(
              title: 'Dashboard',
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Epic Ridge Academy'),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                label: Text('New Admission'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 4.0,
                            ),
                            itemBuilder: (context, index) =>
                                InformationCard(info: schoolInfo[index]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                EventCalendar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
