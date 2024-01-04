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
    return const Scaffold(
      backgroundColor: Config.bgColor,
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: FaIcon(Icons.arrow_back_ios),
      ),
    );
  }
}
