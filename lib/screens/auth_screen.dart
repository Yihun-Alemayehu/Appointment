import 'package:doctor_appointment/components/login_form.dart';
import 'package:doctor_appointment/components/social_button.dart';
import 'package:doctor_appointment/utils/config.dart';
import 'package:doctor_appointment/utils/text.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        top: 25,
        left: 15,
        right: 15,
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.enText['welcome_text']!,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          Text(
            AppText.enText['signIn_text']!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          const LogInForm(),
          Config.spaceSmall,
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppText.enText['forget_password_text']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                AppText.enText['signUp_text']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                AppText.enText['signup_text_two']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Text(
              AppText.enText['social_login_text']!,
              style: const TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Config.spaceSmall,
          // Config.spaceSmall,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialButton(social: 'google'),
              SocialButton(social: 'facebook'),
            ],
          ),
          Config.spaceSmall,
          Config.spaceSmall,
        ],
      )),
    ));
  }
}
