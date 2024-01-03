import 'package:doctor_appointment/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.social,
  });

  final String social;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      // style: OutlinedButton.styleFrom(
      //   padding: EdgeInsets.symmetric(vertical: 15),
      //   side: const BorderSide(
      //     width: 1,
      //     color: Colors.black,
      //   ),
      // ),
      onPressed: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/$social.png',
              width: 40,
              height: 40,
            ),
            Text(
              social.toUpperCase(),
              style: const TextStyle(
                color: Config.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
