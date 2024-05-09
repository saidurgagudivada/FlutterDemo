import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  final String photoUrl;
  final String doctorName;
  final String specialization;

  DoctorWidget({
    required this.photoUrl,
    required this.doctorName,
    required this.specialization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 300.0, // Increased height to accommodate the button
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(photoUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            doctorName,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            specialization,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity, // Button expands to full width
            child: ElevatedButton(
              onPressed: () {
                // Handle appointment booking logic here
                print('Booking appointment with $doctorName');
                // You can navigate to a booking screen or perform other actions
              },
              child: Text('Book Appointment'),
            ),
          ),
        ],
      ),
    );
  }
}
