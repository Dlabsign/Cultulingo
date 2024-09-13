import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double paddingHorizontal = screenSize.width * 0.08;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: screenSize.height * 0.05,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome to Cultulingo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.width * 0.09,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Dengan Cultulingo, Anda dapat belajar bahasa baru dengan cara yang menyenangkan dan interaktif, langsung dari ponsel Anda.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.width * 0.030, // Font dinamis
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF134CD2),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Opacity(
                              opacity: 0.50,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF939393),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFF1C92FF),
                          ),
                          child: Row(
                            
                            children: [
                              Text(
                                "Selanjutnya",
                                style: GoogleFonts.jost(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
