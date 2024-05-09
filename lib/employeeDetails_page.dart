
import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class EmployeeDetailsPage extends StatelessWidget {
  final Employee employee;

  EmployeeDetailsPage({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Details", style: TextStyle(color: Colors.orange, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Name: ${employee.name}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Designation: ${employee.designation}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Department: IT', style: TextStyle(fontSize: 16),
            ),
            Text(
              'Location: United Kingdom', style: TextStyle(fontSize: 16),
            ),
          ],//Children
        ),
      ),
    );
  }
}

