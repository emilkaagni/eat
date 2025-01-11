import 'package:eat_fit/screen/splash/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1.00, 0.08),
            end: Alignment(1, -0.08),
            colors: [Color(0xFF298100), Color(0xFFA7D3A8)],
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            // "Get Started" Button
            Positioned(
              left: 30,
              bottom: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen()),
                  );
                },
                child: Container(
                  width: 315,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Color(0xFF298100),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // Tagline and Logo
            Positioned(
              left: 95,
              top: 371,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo Text
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Eat',
                          style: TextStyle(
                            color: Color(0xFF1D1517),
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Fit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Tagline
                  const Text(
                    'Simplified Food Tracking',
                    style: TextStyle(
                      color: Color(0xFFE6D2D7),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
