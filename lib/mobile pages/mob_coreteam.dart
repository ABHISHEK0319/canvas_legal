import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';

class CoreTeamMobWidget extends StatelessWidget {
  const CoreTeamMobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return body(s, context);
  }

  ///  Large body of core team.....

  Widget body(Size s, context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 0.867),
      height: (MediaQuery.of(context).size.height),
      width: (MediaQuery.of(context).size.width),
      child: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: s.height * 1.0,

          //   color: const Color.fromRGBO(0, 0, 0, 0.867),

          //   // decoration: const BoxDecoration(
          //   //   color: Color.fromRGBO(0, 0, 0, 0.867),
          //   // ),
          // ),
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/1x/Core Team Shape-BG.png",
              width: s.width,
              height: s.height * 0.6,
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
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Core ',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      fontFamily: "ButlerBlack",
                      color: Color(0xffffffff),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Team',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                            fontFamily: "ButlerBlack",
                            color: CanvasLegalColors.Blue[1]),
                      ),
                    ],
                  ),
                ),
              ),
              DetailShowCardMedium(
                title: 'ANKUR TRIPATHI',
                subtext: """Licensed Attorney, Bar Council of India 
              \nPractise Areas - Dispute Resolution, White Collar Crimes, 
              \nIntellectual Property, Employment, Corporate & Commercial""",
                emailtxt: 'E: ankur@canvaslegal.in',
                imgbutton: () {},
              ),
              //const SizedBox(width: 95),
              DetailShowCardMedium(
                title: 'ABHISHEK P.N',
                subtext: """Licensed Attorney, Bar Council of India 
              \nPractise Areas -  Real Estate & Construction, NRI Services, 
              \nData Protection & Privacy """,
                emailtxt: 'E: abhishek@canvaslegal.in',
                imgbutton: () {},
              ),
            ],
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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/1x/Core Team Image.png",
              height: 280,
            ),
          ],
        ),
        Container(
          // margin: const EdgeInsets.only(
          //   top: 200,
          //   left: 35,
          //   right: 30,
          // ),
          //height: 190,
          width: 325,
          // padding:
          //     const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 15),
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
                  height: 0.6,
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
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset(
                "assets/1x/Core Team Image.png",
                height: 250,
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(
              top: 255,
              left: 30,
              right: 30,
            ),
            //height: 190,
            width: 300,
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
