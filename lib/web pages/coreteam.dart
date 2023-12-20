import 'package:canvas_legal/responsiveclass.dart';
import 'package:canvas_legal/web%20pages/persons%20Page/abhishek_aboutus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';
import '../mobile pages/mobcoreteam.dart';
import 'persons Page/anukur_aboutus.dart';

class CoreTeamWidget extends StatelessWidget {
  const CoreTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    var body = ResponsiveWidget(
      largeScreen: corelargebody(s, context),
      mediumScreen: coreMediumbody(s, context),
    );
    return body;
  }

  ///  Large body of core team.....
  Widget corelargebody(Size s, context) {
    return Container(
      height: (MediaQuery.of(context).size.height),
      width: (MediaQuery.of(context).size.width),
      color: const Color.fromRGBO(0, 0, 0, 0.867),
      child: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   //height: s.height * 1.2,
          //   decoration: const BoxDecoration(
          //     color: Color.fromRGBO(0, 0, 0, 0.867),
          //   ),
          // ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/1x/Core Team Shape-BG.png",
              width: s.width,
              height: s.height * 0.68,
              fit: BoxFit.fill,
            ),
          ),
          // Positioned(
          //   bottom: 0.0,
          //   child: Image.asset(
          //     "assets/1x/Core Team Down Shape.png",
          //     width: s.width,
          //     height: s.height * 0.035,
          //     fit: BoxFit.fill,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Core ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 52,
                          fontFamily: "ButlerRegular",
                          color: Color(0xffffffff),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Team',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 52,
                                fontFamily: "ButlerRegular",
                                color: CanvasLegalColors.Blue[1]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetailShowCard(
                      title: 'ANKUR TRIPATHI',
                      subtext: """Licensed Attorney, Bar Council of India 
                      \nPractise Areas - Dispute Resolution, White Collar Crimes, 
                      \nIntellectual Property, Employment, Corporate & 
                      \nCommercial""",
                      emailtxt: 'E: ankur@canvaslegal.in',
                      imgbutton: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnkurAboutUs()));
                      },
                    ),
                    const SizedBox(width: 95),
                    DetailShowCard(
                      title: 'ABHISHEK P.N',
                      subtext: """Licensed Attorney, Bar Council of India 
                \nPractise Areas -  Real Estate & Construction, NRI Services, 
                \nData Protection & Privacy """,
                      emailtxt: 'E: abhishek@canvaslegal.in',
                      imgbutton: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AbhishekAboutUs()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget coreMediumbody(Size s, context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 0.867),
      //height: (MediaQuery.of(context).size.height),
      width: (MediaQuery.of(context).size.width),
      child: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: s.height * 1.0,
          //   decoration: const BoxDecoration(
          //     color: Color.fromRGBO(0, 0, 0, 0.867),
          //   ),
          // ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/1x/Core Team Shape-BG.png",
              width: s.width,
              height: s.height * 0.62,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/1x/Core Team Down Shape.png",
              width: s.width,
              height: s.height * 0.035,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Core ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 50,
                          fontFamily: "ButlerRegular",
                          color: Color(0xffffffff),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Team',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 50,
                                fontFamily: "ButlerRegular",
                                color: CanvasLegalColors.Blue[1]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetailShowCardMedium(
                      title: 'ANKUR TRIPATHI',
                      subtext:
                          """Licensed Attorney, Bar Council of India \nPractise Areas - Dispute Resolution, White Collar Crimes, \nIntellectual Property, Employment, Corporate & Commercial""",
                      emailtxt: 'E: ankur@canvaslegal.in',
                      imgbutton: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnkurAboutUs()));
                      },
                    ),
                    //const SizedBox(width: 95),
                    DetailShowCardMedium(
                      title: 'ABHISHEK P.N',
                      subtext:
                          """Licensed Attorney, Bar Council of India \nPractise Areas -  Real Estate & Construction, NRI Services, \nData Protection & Privacy """,
                      emailtxt: 'E: abhishek@canvaslegal.in',
                      imgbutton: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AbhishekAboutUs()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailShowCard extends StatelessWidget {
  final String title, subtext, emailtxt;
  final VoidCallback imgbutton;
  const DetailShowCard({
    super.key,
    required this.title,
    required this.subtext,
    required this.emailtxt,
    required this.imgbutton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
                "assets/1x/Core Team Image.png",
                height: 300,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 230,
            left: 35,
            right: 30,
          ),
          height: 200,
          width: 330,
          padding:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/1x/Core Team Bar.png"),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'ButlerBlack',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 15),
              Text(
                subtext,
                style: const TextStyle(
                  height: 0.7,
                  color: Colors.black,
                  fontSize: 10,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                emailtxt,
                style: const TextStyle(
                    height: 0.6,
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 15),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    """View more""",
                    style: TextStyle(
                        height: 0.6,
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Image.asset(
                  //     "assets/images/View more.png",
                  //     height: 150,
                  //     // width: 52,
                  //     scale: 2.0,
                  //   ),
                  // ),
                  const SizedBox(width: 75),
                  InkWell(
                    onTap: imgbutton,
                    child: Image.asset(
                      "assets/images/View more.png",
                      height: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

// .............................Medium detailshow card.........................
class DetailShowCardMedium extends StatelessWidget {
  final String title, subtext, emailtxt;
  final VoidCallback imgbutton;
  const DetailShowCardMedium({
    super.key,
    required this.title,
    required this.subtext,
    required this.emailtxt,
    required this.imgbutton,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle subtxtstyle = GoogleFonts.montserrat(
      height: 0.7,
      color: Colors.black,
      fontSize: 8,
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Image.asset(
                "assets/1x/Core Team Image.png",
                height: 240,
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(
              top: 220,
              left: 30,
              right: 30,
              bottom: 20,
            ),
            //height: 140,
            width: 290,
            padding:
                const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/1x/Core Team Bar.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'ButlerBlack',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 15),
                Text(
                  subtext,
                  style: subtxtstyle,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                Text(
                  emailtxt,
                  style: subtxtstyle,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 12),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      """View more""",
                      style: TextStyle(
                          height: 0.6,
                          color: Colors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(width: 75),
                    InkWell(
                      onTap: imgbutton,
                      child: Image.asset(
                        "assets/images/View more.png",
                        height: 25,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
