import 'package:canvas_legal/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobAboutUs extends StatelessWidget {
  const MobAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: const EdgeInsets.only(top: 20, bottom: 40),
      decoration: const BoxDecoration(
        // color: Colors.amber,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/1x/About us Shape.png"),
        ),
      ),
      child: Column(
        children: [
          Container(
            //padding: const EdgeInsets.all(35),
            // color: Colors.amber,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 35, bottom: 60),
            child: Image.asset(
              "assets/images/About Us icon.png",
              width: size.width * 0.4,
            ),
          ),
          Container(
            //color: Colors.amber,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'About ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      fontFamily: "ButlerBlack",
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Us',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            fontFamily: "ButlerBlack",
                            color: CanvasLegalColors.Blue[1]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  """Located in the thriving hub of Bangalore, India, Canvas Legal stands as a testament to dedication, innovation, and unwavering commitment to legal excellence. We pride ourselves on offering expert guidance in the legal sphere, ensuring our clients feel supported and informed every step of the way.""",
                  style: GoogleFonts.montserrat(
                    // fontFamily: "ButlerBlack",
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  """While many firms hold fast to traditional methods, we embrace progressive approaches. Our skilled legal team is chosen for their dedication, knowledge, and expertise. Together, we focus on delivering reliable, effective, and timely solutions for our clients.""",
                  style: GoogleFonts.montserrat(
                    // fontFam\nily: "ButlerBlack",
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  """Our approach is straightforward: Listen. Innovate. Deliver. We place emphasis on understanding our clients' needs and converting them into actionable legal strategies.""",
                  style: GoogleFonts.montserrat(
                    // fontFamily: "ButlerBlack",
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  """With Canvas Legal, you find a trusted partner ready to assist with any legal and corporate requirement, ensuring you navigate the complexities of the law with clarity and confidence.""",
                  style: GoogleFonts.montserrat(
                    // fontFamily: "ButlerBlack",
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 95,
                    height: 25,
                    padding: const EdgeInsets.only(
                      top: 1.5,
                      bottom: 1.5,
                      left: 3.0,
                      right: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                        border: Border.all(
                            color: CanvasLegalColors.Blue, width: 1.8)
                        //color: Colors.greenAccent,
                        ),
                    child: Text(
                      'Read More'.toUpperCase(),
                      style: GoogleFonts.montserrat(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 90)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
