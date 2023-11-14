import 'package:canvas_legal/constant/colors.dart';
import 'package:canvas_legal/responsiveclass.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle styletitle = const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          //fontFamily: "ButlerBold",
          height: 0.7,
        ),
        txtstyle =
            const TextStyle(color: Colors.black, fontSize: 12, height: 2.0);

    var widgetbottom = ResponsiveWidget(
      largeScreen: largeWidget(styletitle, txtstyle, size),
      mediumScreen: smallWidget(styletitle, txtstyle),
      //mediumScreen: ,
    );

    return widgetbottom;
  }

  Container largeWidget(TextStyle styletitle, TextStyle txtstyle, size) {
    return Container(
      //color: Colors.green,
      height: 324,

      child: Column(
        children: [
          Image.asset(
            "assets/1x/Core Team Down Shape.png",
            width: size.width,
            height: size.height * 0.035,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/Logo.png",
                          height: 72,
                        ),
                        Container(
                          // color: Colors.black,
                          width: 5.0,
                          //height: 320,
                          margin: const EdgeInsets.only(left: 25, right: 25),
                        ),
                        const DetailOfCompany()
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: 1,
                  height: 220,
                  margin: const EdgeInsets.only(left: 110, right: 80),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Facility",
                            style: styletitle,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(width: 45),
                      Column(
                        children: [
                          Text(
                            "Support",
                            style: styletitle,
                            textAlign: TextAlign.start,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '\nAbout Us',
                                  style: txtstyle,
                                ),
                                TextSpan(
                                  text: '\nFAQs',
                                  style: txtstyle,
                                ),
                                TextSpan(
                                  text: '\nPrivacy policy',
                                  style: txtstyle,
                                ),
                                TextSpan(
                                  text: '\nHelp Me',
                                  style: txtstyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 45),
                      Column(
                        children: [
                          Text(
                            "Service",
                            style: styletitle,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          // term privacy policy....
          Container(
            //margin: const EdgeInsets.only(top: 40),
            alignment: Alignment.bottomRight,
            color: CanvasLegalColors.Blue[1],
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.only(top: 12.0, right: 80, bottom: 12.0),
            child: const Text(
              "TERM PRIVACY POLICY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container smallWidget(TextStyle styletitle, TextStyle txtstyle) {
    return Container(
      //color: Colors.green,
      //height: 300,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 80, right: 40, top: 20, bottom: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DetailOfCompany(),
                Container(
                  color: Colors.black,
                  width: 1,
                  height: 220,
                  margin: const EdgeInsets.only(left: 40, right: 40),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Facility",
                      style: styletitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(width: 45),
                Column(
                  children: [
                    Text(
                      "Support",
                      style: styletitle,
                      textAlign: TextAlign.start,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\nAbout Us',
                            style: txtstyle,
                          ),
                          TextSpan(
                            text: '\nFAQs',
                            style: txtstyle,
                          ),
                          TextSpan(
                            text: '\nPrivacy policy',
                            style: txtstyle,
                          ),
                          TextSpan(
                            text: '\nHelp Me',
                            style: txtstyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 45),
                Column(
                  children: [
                    Text(
                      "Service",
                      style: styletitle,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // term privacy policy....
          Container(
            //margin: const EdgeInsets.only(top: 40),
            alignment: Alignment.bottomRight,
            color: CanvasLegalColors.Blue[1],
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.only(top: 12.0, right: 80, bottom: 12.0),
            child: const Text(
              "TERM PRIVACY POLICY",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailOfCompany extends StatelessWidget {
  const DetailOfCompany({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 0.7),
        subtxtStyle = const TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        txtstyle =
            const TextStyle(color: Colors.black, fontSize: 11, height: 1.0);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Office: ",
          style: titleStyle,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 10),
        const Text(
          """4th Floor, Classic Arena, Hosur Rd,
            \nAECS Layout - A Block, Singasandra,
            \nBengaluru 560068""",
          style: TextStyle(
            height: 0.5,
            //fontFamily: "ButlerRegular",
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Contact: ",
          style: titleStyle,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 5),
        Text.rich(
          TextSpan(
            children: [
              //....Email declaration...
              TextSpan(
                text: 'Email: ',
                style: subtxtStyle,
              ),
              TextSpan(
                text: 'info@canvaslegal.in',
                style: txtstyle,
              ),

              //....Telephone  Number declaration...
              TextSpan(
                text: '\nTel: ',
                style: subtxtStyle,
              ),
              TextSpan(
                text: '+91 6362248179',
                style: txtstyle,
              ),
              TextSpan(
                text: '+91 6362248179',
                style: txtstyle,
              ),
              TextSpan(
                text: '\nwww.canvaslegal.in',
                style: txtstyle,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Column(
          children: [
            const Text(
              'Follow Us',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "1x/facebook.png",
                    height: 16,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "1x/linkedin.png",
                    height: 16,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "1x/twitter.png",
                    height: 16,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "1x/youtube.png",
                    height: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
