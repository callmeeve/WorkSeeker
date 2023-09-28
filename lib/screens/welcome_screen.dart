import 'package:flutter/material.dart';
import 'package:rent_work/core.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
              ),
              child: Image.asset(
                'assets/images/illustration1.png',
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const TextUtils(
              text: 'Find the best services',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              align: TextAlign.center,
            ),
            const SizedBox(height: 14),
            const TextUtils(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in iaculis nulla, sit amet accumsan est',
              fontSize: 16,
              color: grey,
              align: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RootScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const TextUtils(
                  text: 'Start Now',
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
