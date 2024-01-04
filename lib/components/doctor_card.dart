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
      height: 200,
      width: 280,
      child: GestureDetector(
        child: Card(
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr. Robel Yonas'),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Medical specialist'),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 147, 7),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 147, 7),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 147, 7),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 147, 7),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 147, 7),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Experience'),
                      Text('8 years'),
                      SizedBox(
                        height: 3,
                      ),
                      Text('Patients'),
                      Text('1.08k'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Image.asset('assets/doctor2.png'),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
