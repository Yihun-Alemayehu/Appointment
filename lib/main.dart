import 'package:doctor_appointment/main_layout_screen.dart';
import 'package:doctor_appointment/screens/auth_screen.dart';
import 'package:doctor_appointment/screens/booking_screen.dart';
import 'package:doctor_appointment/screens/doctor_details.dart';
import 'package:doctor_appointment/screens/successfully_booked.dart';
import 'package:doctor_appointment/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Doctor',
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outlineBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlineBorder,
            floatingLabelStyle: TextStyle(
              color: Config.primaryColor,
            ),
            prefixIconColor: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            unselectedItemColor: Colors.grey.shade700,
            showUnselectedLabels: false,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/main': (context) => const MainLayoutScreen(),
        '/doc_details': (context) => const DoctorDetail(),
        '/booking_screen': (context) => const BookingScreen(),
        '/booked_screen': (context) => const AppointmentBooked(),
      },
    );
  }
}
