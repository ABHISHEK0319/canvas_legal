import 'package:canvas_legal/constant/stringfile.dart';
import 'package:canvas_legal/responsiveclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //height: (MediaQuery.of(context).size.height),
      width: (MediaQuery.of(context).size.width),
      //color: Colors.red,
      child: Stack(
        children: [
          // ....top part....
          Container(
            padding: const EdgeInsets.only(top: 120),
            child: Row(
              children: [
                topLeftPartWidget(size),

                // ....Right side top work
                rightContainedWidget(size),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container topLeftPartWidget(Size size) {
    return Container(
      // color: const Color(0xFFc0e2ec),
      width: size.width / 1.8,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.20),
          FittedBox(
            child: Text(
              "Crafting Legal Excellence",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ButlerRegular',
                fontWeight: FontWeight.w700,
                fontSize: size.height * 0.08,
              ),
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResponsiveWidget(
                  largeScreen: Container(
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
                  mediumScreen: Container(
                    width: 220,
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
                ),
                Text(
                  "\n One Case at a Time",
                  style: TextStyle(
                    height: 0.45,
                    color: Colors.black,
                    fontFamily: 'ButlerRegular',
                    fontWeight: FontWeight.w700,
                    fontSize: size.height * 0.08,
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
    Size size = MediaQuery.of(context).size;
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
            // width: size.width * 0.11,
            margin: const EdgeInsets.only(left: 35),

            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      width: size.width * 1.0,
                      height: size.height * 0.5,
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  oneReadMore,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
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
            /// height: size.height * 0.7,
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                scale: 0.5,
                image: AssetImage(
                  "assets/1x/Circle.png",
                ),
              ),
            ),
            child: Image.asset(
              "assets/images/judge_gavel_legal_book.png",
              height: 500,
            ),
          ),
        ],
      ),
    );
  }
}
