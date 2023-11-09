import 'package:canvas_legal/main.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CoreTeamWidget extends StatelessWidget {
  const CoreTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: s.height * 1.35,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.867),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Image.asset(
            "assets/1x/Core Team Shape-BG.png",
            width: s.width,
            height: s.height * 0.98,
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
          padding: const EdgeInsets.only(top: 126.0),
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
                        fontWeight: FontWeight.w500,
                        fontSize: 55,
                        fontFamily: "ButlerBlack",
                        color: Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Team',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 55,
                              fontFamily: "ButlerBlack",
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
                \nIntellectual Property, Employment, Corporate & Commercial""",
                    emailtxt: 'E: ankur@canvaslegal.in',
                    imgbutton: () {},
                  ),
                  const SizedBox(width: 95),
                  DetailShowCard(
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
        ),
      ],
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
              padding: const EdgeInsets.only(top: 48.0),
              child: Image.asset(
                "assets/1x/Core Team Image.png",
                height: 350,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 328,
            left: 30,
            right: 30,
          ),
          height: 190,
          width: 380,
          padding:
              const EdgeInsets.only(top: 35, left: 35, right: 35, bottom: 15),
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
                  fontSize: 22,
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
                  fontSize: 11,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                emailtxt,
                style: const TextStyle(
                    height: 0.6,
                    color: Colors.black,
                    fontSize: 11,
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
                        fontSize: 11,
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
