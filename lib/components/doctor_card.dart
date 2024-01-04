import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: GestureDetector(
        child: const Card(
          child: Row(
            children: [
              Column(
                children: [
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}