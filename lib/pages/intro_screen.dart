import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: 150,
                bottom: 20,
              ),
              child: Image.asset('lib/images/Erewhon.png'),
            ),
            // we deliver groceries at your doorstep
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'We believe that nutrition is the key to a radiant lifestyle.',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),

            // groceree gives you fresh vegetables and fruits
            Text(
              'Order all your Erewhon favorites' ,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 24),

            const Spacer(),

            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 11, 11, 11),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
