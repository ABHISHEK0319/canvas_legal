import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 400,
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
                    height: 58,
                  ),
                  DetailOfCompany()
                ],
              ),
            ],
          ),
          Row(
            children: [],
          )
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
    return Column(
      children: [
        const Text(
          "Office",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.start,
        ),
        RichText(
          text: const TextSpan(
            text: 'Office',
            style: TextStyle(
              //fontFamily: "ButlerRegular",
              color: Colors.black,
              height: 1.0,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            children: <TextSpan>[
              TextSpan(
                text: """4th Floor, Classic Arena, Hosur Rd,
                      \nAECS Layout - A Block, Singasandra,
                      \nBengaluru 560068""",
                style: TextStyle(
                  height: 0.5,
                  //fontFamily: "ButlerRegular",
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
