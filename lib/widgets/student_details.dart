import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedStudent;
    return Drawer(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
          // ignore: unnecessary_null_comparison
          selectedStudent != null ? 0 : -300,
          0,
          0,
        ),
        child: Drawer(
          child: selectedStudent != null
              ? Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${selectedStudent!.name}'),
                      Text('Class: ${selectedStudent!.className}'),
                      Text('Parent: ${selectedStudent!.parentName}'),
                      Text('Performance: ${selectedStudent!.performance}'),
                      ElevatedButton(
                        onPressed: () {
                          selectedStudent = null;
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ),
        ),
    );
  }
}
