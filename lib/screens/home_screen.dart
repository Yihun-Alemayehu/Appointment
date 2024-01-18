import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_appointment/components/appointment_card.dart';
import 'package:doctor_appointment/components/doctor_card.dart';
import 'package:doctor_appointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> medCat = [
    {"icon": FontAwesomeIcons.userDoctor, "category": "General"},
    {"icon": FontAwesomeIcons.heartPulse, "category": "Cardiology"},
    {"icon": FontAwesomeIcons.lungs, "category": "Respirations"},
    {"icon": FontAwesomeIcons.hand, "category": "Dermatology"},
    {"icon": FontAwesomeIcons.personPregnant, "category": "Gynecology"},
    {"icon": FontAwesomeIcons.teeth, "category": "Dental"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Find your Specialist',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.search_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(
                      'assets/messenger.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CarouselSlider(
                  options: CarouselOptions(height: 180.0),
                  items: [
                    {
                      "name": "Dr. Robel Yonas",
                      "specialization": "Medicina Specialist",
                      "image": "doctor1.png"
                    },
                    {
                      "name": "Dr. Zerihun Yonas",
                      "specialization": "Dentist",
                      "image": "doctor2.png"
                    },
                    {
                      "name": "Dr. Robel Yonas",
                      "specialization": "Medicinal Specialist",
                      "image": "doctor1.png"
                    },
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 300,
                          child: Card(
                            color: Colors.blue[900],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Looking for your Desire Specialist Doctor ?',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                color: Colors.green,
                                                width: 3,
                                                height: 50,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    i["name"]!,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                  Text(
                                                    i["specialization"]!,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset('assets/${i["image"]!}'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Config.spaceSmall,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text('See All'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    medCat.length,
                    (index) => Container(
                      width: 120,
                      height: 120,
                      child: (Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(medCat[index]['icon']),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(medCat[index]['category'])
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ),
              Config.spaceSmall,
              const AppointmentCard(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Available Doctor',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text('See All'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                    6,
                    (index) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: (DoctorCard(
                        route: '/doc_details',
                      )),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
