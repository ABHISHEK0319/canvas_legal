import 'package:canvas_legal/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextStyle txtstyle = GoogleFonts.montserrat(
      // fontFamily: "ButlerBlack",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 120),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/1x/About us Shape.png"))),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                //padding: const EdgeInsets.all(35),
                // color: Colors.amber,
                width: MediaQuery.of(context).size.width * 1 / 2.2,
                child: Image.asset(
                  "assets/images/About Us icon.png",
                  height: size.height * 0.6,
                ),
              ),
              Container(
                //color: Colors.amber,
                padding: const EdgeInsets.only(right: 80),
                width: MediaQuery.of(context).size.width * 1 / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'About ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 52,
                          fontFamily: "ButlerBlack",
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Us',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 52,
                                fontFamily: "ButlerBlack",
                                color: CanvasLegalColors.Blue[1]),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      """Located in the thriving hub of Bangalore, India, Canvas Legal stands as a testament to dedication, innovation, and unwavering commitment to legal excellence. We pride ourselves on offering expert guidance in the legal sphere, ensuring our clients feel supported and informed every step of the way.""",
                      style: txtstyle,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      """While many firms hold fast to traditional methods, we embrace progressive approaches. Our skilled legal team is chosen for their dedication, knowledge, and expertise. Together, we focus on delivering reliable, effective, and timely solutions for our clients""",
                      style: txtstyle,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      """Our approach is straightforward: Listen. Innovate. Deliver. We place emphasis on understanding our clients' needs and converting them into actionable legal strategies.""",
                      style: txtstyle,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      """With Canvas Legal, you find a trusted partner ready to assist with any legal and corporate requirement, ensuring you navigate the complexities of the law with clarity and confidence""",
                      style: txtstyle,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Container(
                    //     alignment: Alignment.center,
                    //     width: size.width * 0.1,
                    //     height: 40,
                    //     padding: const EdgeInsets.only(
                    //       top: 3.0,
                    //       bottom: 3.0,
                    //       left: 6.0,
                    //       right: 6.0,
                    //     ),
                    //     decoration: BoxDecoration(
                    //         borderRadius: const BorderRadius.only(
                    //           topLeft: Radius.circular(10),
                    //           bottomRight: Radius.circular(10),
                    //         ),
                    //         border: Border.all(
                    //             color: CanvasLegalColors.Blue, width: 1.8)
                    //         //color: Colors.greenAccent,
                    //         ),
                    //     child: Text(
                    //       'Read More'.toUpperCase(),
                    //       style: GoogleFonts.montserrat(
                    //         fontSize: size.width * 0.011,
                    //         fontWeight: FontWeight.w600,
                    //         letterSpacing: 1,
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
