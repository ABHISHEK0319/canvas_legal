import 'package:canvas_legal/constant/colors.dart';
import 'package:canvas_legal/pages/aboutus.dart';
import 'package:canvas_legal/pages/core_practice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewDemoPage1 extends StatefulWidget {
  const NewDemoPage1({super.key});

  @override
  State<NewDemoPage1> createState() => _NewDemoPage1State();
}

class _NewDemoPage1State extends State<NewDemoPage1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            // ....top part....
            Row(
              children: [
                topLeftPartWidget(size),

                // ....Right side top work
                rightContainedWidget(size),
              ],
            ),
          ],
        ),
        // Here Define Core Team.....
        const CoreTeam(),
      ],
    );
  }

  Container topLeftPartWidget(Size size) {
    return Container(
      //color: const Color(0xFFc0e2ec),
      width: size.width / 1.8,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.20),
          const FittedBox(
            child: Text(
              "Crafting Legal Excellence",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ButlerRegular',
                fontWeight: FontWeight.w700,
                fontSize: 48,
              ),
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.11,
                  height: size.height * 0.05,
                  margin: const EdgeInsets.only(
                    left: 35,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF005067),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // child: Image.asset("HammerWithbook.png"),
                ),
                const Text(
                  "\n One Case at a Time",
                  style: TextStyle(
                    height: 0.45,
                    color: Colors.black,
                    fontFamily: 'ButlerRegular',
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                  ),
                ),
              ],
            ),
          ),
          buttonTopSection(size),
        ],
      ),
    );
  }

  // button............
  Padding buttonTopSection(Size size) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 90,
        top: 80,
        bottom: 150,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: size.width * 0.11,
            margin: EdgeInsets.only(left: 35),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF005067)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              child: Text(
                "Read More".toUpperCase(),
                style: GoogleFonts.montserrat(
                  //fontFamily: "ButlerRegular",
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox rightContainedWidget(Size size) {
    return SizedBox(
      width: size.width / 2.8,
      //color: Colors.amber,

      child: Stack(
        children: [
          // Container(
          //   height: size.height * 0.7,
          //   margin: const EdgeInsets.only(top: 50),
          //   decoration: const BoxDecoration(
          //     color: Color.fromARGB(255, 192, 226, 236),
          //     shape: BoxShape.circle,
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 180.0, top: 30),
          //   child: Align(
          //     alignment: Alignment.topRight,
          //     child: Container(
          //       height: size.height * 0.4,
          //       decoration: const BoxDecoration(
          //         // color: Color.fromARGB(255, 235, 250, 255),
          //         // shape: BoxShape.circle,
          //         image: DecorationImage(
          //           image: AssetImage("assets/1x/Circle.png"),
          //         ),
          //       ),
          //       // child: Image.asset("HammerWithbook.png"),
          //     ),
          //   ),
          // ),

          Container(
            height: size.height * 0.7,
            margin: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                scale: 0.2,
                image: AssetImage(
                  "assets/1x/Circle.png",
                ),
              ),
            ),
            child: Image.asset(
              "Law_image.png",
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}

class CoreTeam extends StatefulWidget {
  const CoreTeam({
    Key? key,
  }) : super(key: key);

  @override
  State<CoreTeam> createState() => _CoreTeamState();
}

class _CoreTeamState extends State<CoreTeam> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.white,

      width: size.width,
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: RichText(
              text: TextSpan(
                text: 'Core ',
                style: const TextStyle(
                  fontFamily: "ButlerRegular",
                  color: Colors.black,
                  fontSize: 72,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Practices',
                    style: TextStyle(
                      fontFamily: "ButlerRegular",
                      color: CanvasLegalColors.Blue[1],
                      fontSize: 72,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.9,
            child: const CorePractice(),
          ),
          const AboutUs(),
        ],
      ),
    );
  }
}
