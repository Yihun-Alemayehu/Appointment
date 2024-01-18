import 'package:doctor_appointment/components/custom_appbar.dart';
import 'package:doctor_appointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.bgColor,
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              icon: FaIcon(
                isFav ? Icons.favorite_rounded : Icons.favorite_outline,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            AboutDoctor(),
          ],
        ),
      ),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const Column(
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/doctor2.png'),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Dr. Robel Yonas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Text(
              'HU (Hawassa University) , St. Paul Medical University',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(
              'St. Paul Medical University',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DetailBody(),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Config.spaceSmall,
          DoctorInfo(),
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue[900],
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
