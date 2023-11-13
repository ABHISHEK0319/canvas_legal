import 'package:canvas_legal/constant/stringfile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobPeoplePage extends StatefulWidget {
  const MobPeoplePage({super.key});

  @override
  State<MobPeoplePage> createState() => _MobPeoplePageState();
}

class _MobPeoplePageState extends State<MobPeoplePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        imageWidget(size),
        txtPlusBtnWidget(size),
      ],
    );
  }

  Container txtPlusBtnWidget(Size size) {
    return Container(
      // color: const Color(0xFFc0e2ec),
      width: size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.04),
          const FittedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "Crafting Legal Excellence",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ButlerRegular',
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          const FittedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "\n One Case at a Time",
                style: TextStyle(
                  height: 0.4,
                  color: Colors.black,
                  fontFamily: 'ButlerRegular',
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          readMoreBtn(size),
        ],
      ),
    );
  }

  // button............
  Padding readMoreBtn(Size size) {
    return Padding(
      padding: const EdgeInsets.only(
        //left: 90,
        //top: 80,
        bottom: 100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: size.width * 0.29,
            margin: const EdgeInsets.only(top: 25),
            alignment: Alignment.center,
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
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
              ),
              child: Text(
                "Read More".toUpperCase(),
                style: GoogleFonts.montserrat(
                  //fontFamily: "ButlerRegular",
                  fontSize: 11,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox imageWidget(Size size) {
    return SizedBox(
      width: size.width,
      //color: Colors.amber,

      child: Stack(
        children: [
          Container(
            /// height: size.height * 0.7,
            margin: const EdgeInsets.only(top: 140),
            alignment: Alignment.center,
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
              height: 250,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
