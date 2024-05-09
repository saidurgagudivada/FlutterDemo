import 'package:flutter/material.dart';
import 'DoctorWidget.dart';

class DoctorListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> doctors = [
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal ',
        'specialization': 'Pediatrician',
      },
      {
        'photoUrl':
        'https://png.pngtree.com/png-clipart/20231002/original/pngtree-young-afro-professional-doctor-png-image_13227671.png',
        'doctorName': 'Dr. Jitendra',
        'specialization': 'Cardiologist',
      },
      {
        'photoUrl':
        'https://media.istockphoto.com/id/1292015214/photo/portrait-female-doctor-stock-photo.jpg?s=612x612&w=0&k=20&c=nr4XaWnRPQnWqwhzahajZhskIDG1yK9DmIteV5gpUOI=',
        'doctorName': 'Dr. Sarah jha',
        'specialization': 'Dermatologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/03/00/22/02/360_F_300220248_VKEd3QKx31kzqHcwZfnGmWKZLYTjf8R0.jpg',
        'doctorName': 'Dr. Ramesh',
        'specialization': 'Orthopedic Surgeon',
      },
      {
        'photoUrl':
        'https://media.istockphoto.com/id/177373093/photo/indian-male-doctor.jpg?s=612x612&w=0&k=20&c=5FkfKdCYERkAg65cQtdqeO_D0JMv6vrEdPw3mX1Lkfg=',
        'doctorName': 'Dr. Emily ',
        'specialization': 'Oncologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. David ',
        'specialization': 'Gastroenterologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Sophia ',
        'specialization': 'Psychiatrist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal',
        'specialization': 'Neurologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal kumar',
        'specialization': 'Obstetrician/Gynecologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal kumar',
        'specialization': 'Radiologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal kumar',
        'specialization': 'Endocrinologist',
      },
      {
        'photoUrl':
        'https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg',
        'doctorName': 'Dr. Vishal kumar',
        'specialization': 'Nephrologist',
      }
      // Add more doctors here...
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor List'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 100,
          mainAxisSpacing: 100,
        ),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 150.0, // Fixed width for each DoctorWidget
            height: 250.0, // Fixed height for each DoctorWidget
            child: DoctorWidget(
              photoUrl: doctors[index]['photoUrl']!,
              doctorName: doctors[index]['doctorName']!,
              specialization: doctors[index]['specialization']!,
            ),
          );
        },
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
