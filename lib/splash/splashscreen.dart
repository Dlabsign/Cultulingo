import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width - 120;

    final double paddingHorizontal = screenSize.width * 0.08;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  "assets/splash/splash1.svg",
                  fit: BoxFit.contain,
                )),
          ),
          Expanded(
            child: Container(
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
                          fontSize: screenSize.width * 0.09,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        'Dengan Cultulingo, Anda dapat belajar bahasa baru dengan cara yang menyenangkan dan interaktif, langsung dari ponsel Anda.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                          color: Colors.black,
                          fontSize: screenSize.width * 0.030, // Font dinamis
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(
                                0xFF134CD2,
                              ),
                              padding: EdgeInsets.all(20)),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Selanjutnya",
                                style: GoogleFonts.jost(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            decoration:
                BoxDecoration(color: const Color.fromARGB(248, 255, 255, 255)),
            child: Image.asset(
              "assets/bg-batik.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
