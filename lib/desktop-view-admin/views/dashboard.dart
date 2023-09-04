/// This page will show the dashboard to the admin. 
/// It will include the following:
/// 2. A widget of number of the admins
/// 3. A widget of number of the subjects offered
/// 4. A widget of number of the classes
/// 5. A widget of number of the teachers
/// 6. A widget of number of the students
/// 7. A widget of number of the parents
/// 8. A widget of number of the staffs
/// 9. A graph widget of performance of the students
/// 10. A widget of upcoming events shown in a calender
/// 11. A calender widget of the current month
/// 12. A school finance widget



import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}