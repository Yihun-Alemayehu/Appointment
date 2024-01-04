import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

enum FilterStatus {upcoming, complete, cancel}

class _AppointmentScreenState extends State<AppointmentScreen> {
  FilterStatus status = FilterStatus.upcoming;
  Alignment _alignment = Alignment.centerLeft;
  List<dynamic> schedules = [
    {
      "doctor_name": "Dr. Robel yonas",
      "doctor_profile": "assets/doctor2.png",
      "category": "Dentist",
      "status": "upcoming",
    },
    {
      "doctor_name": "Dr. zerihun yonas",
      "doctor_profile": "assets/doctor1.png",
      "category": "Dentist",
      "status": "complete",
    },
    {
      "doctor_name": "Dr. Simon yonas",
      "doctor_profile": "assets/doctor2.png",
      "category": "Respiration",
      "status": "complete",
    },
    {
      "doctor_name": "Dr. Kalkidan yonas",
      "doctor_profile": "assets/doctor1.png",
      "category": "Cardiology",
      "status": "cancel",
    },

  ];
  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules = schedules.where((var schedule) {
      switch(schedule['status']){
        case 'upcoming':
          schedule['status'] = FilterStatus.upcoming;
          break;
        case 'complete':
          schedule['status'] = FilterStatus.complete;
          break;
        case 'cancel':
          schedule['status'] = FilterStatus.cancel;
          break;
      }
      return schedule['status'];
    }).toList();
    return SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}