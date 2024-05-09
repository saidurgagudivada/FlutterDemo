import 'package:flutter/material.dart';
import 'employeeDetails_page.dart';

// Define your Employee class
class Employee {
  final String name;
  final String designation;

  Employee({required this.name, required this.designation});
}

class DashboardPage extends StatelessWidget {
  // Define your list of employees
  final List<Employee> listOfEmployees = [
    Employee(name: 'John Doe', designation: 'Software Engineer'),
    Employee(name: 'Jane Smith', designation: 'UI/UX Designer'),
    Employee(name: 'Michael Johnson', designation: 'Data Scientist'),
    Employee(name: 'Emily Brown', designation: 'Project Manager'),
    Employee(name: 'David Wilson', designation: 'Marketing Specialist'),
    Employee(name: 'Sarah Lee', designation: 'Graphic Designer'),
    Employee(name: 'Kevin Garcia', designation: 'Frontend Developer'),
    Employee(name: 'Amanda Taylor', designation: 'HR Manager'),
    Employee(name: 'Jason Martinez', designation: 'Product Manager'),
    Employee(name: 'Rachel Thompson', designation: 'Content Writer'),
    Employee(name: 'Matthew Clark', designation: 'Sales Executive'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DashboardPage",
          style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: ListView.builder(
        itemCount: listOfEmployees.length,
        itemBuilder: (context, index) {
          // Build list item for each employee
          final employee = listOfEmployees[index];
          return  Container (
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: ListTile(
            title: Text(employee.name, style: TextStyle(color: Colors.black, fontSize: 18),),
            subtitle: Text(employee.designation, style: TextStyle(color: Colors.grey, fontSize: 18)),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => EmployeeDetailsPage(employee: employee),
                ),
              );
            },
           ),
          );
        },
      ),
    );
  }
}
