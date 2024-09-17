import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    final double imageHeight =
        screenHeight * 0.5; // Set image height to 50% of screen height

    final double paddingHorizontal = screenWidth * 0.08;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: imageHeight,
            child: AspectRatio(
              aspectRatio: 1,
              child: SvgPicture.asset(
                "assets/splash/splash2.svg",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: screenSize.height * 0.03,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Kamu Sudah Mempunyai Akun?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: screenWidth *
                              0.08, // Adjust font size dynamically
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Mulai Buat akun kamu Sekarang',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: screenWidth *
                              0.03, // Adjust font size dynamically
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF134CD2),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          onPressed: () {
                            // Add navigation or other actions here
                          },
                          child: Text(
                            "Masuk",
                            style: GoogleFonts.jost(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Saya Belum Mempunyai akun',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF134CD2),
                            fontSize: 14,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 254),
            ),
            child: Image.asset(
              "assets/bg-batik.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
