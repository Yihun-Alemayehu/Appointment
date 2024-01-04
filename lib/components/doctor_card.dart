// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.route,
  }) : super(key: key);

  final String route;

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
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
      ),
    );
  }
}
