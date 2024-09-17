import 'package:cultulingo/splash/splashscreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

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
                "assets/splash/splash1.svg",
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
                        'Welcome to Cultulingo',
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
                        'Dengan Cultulingo, Anda dapat belajar bahasa baru dengan cara yang menyenangkan dan interaktif, langsung dari ponsel Anda.',
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
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF134CD2),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SplashScreen2()),
                        );
                      },
                      child: Text(
                        "Selanjutnya",
                        style: GoogleFonts.jost(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
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
