import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupCallMenu extends StatelessWidget {
  final iconsize;

  const PopupCallMenu({
    super.key,
    this.iconsize,
  });

  @override
  Widget build(BuildContext context) {
    String telno = " +91 6362248179";
    return PopupMenuButton(
      tooltip: "Can you call me",
      offset: const Offset(0, 40),
      icon: const Icon(Icons.call_rounded),
      iconSize: iconsize,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // padding: const EdgeInsets.only(top: 20),
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            mouseCursor: MouseCursor.uncontrolled,
            height: kTextTabBarHeight * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text.rich(
                //   TextSpan(
                //     children: [
                //       const TextSpan(
                //         text: "Name : ",
                //         style: TextStyle(
                //           fontFamily: "ButlerBlack",
                //           fontSize: 13,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       TextSpan(
                //         text: "XYZ.....",
                //         style: GoogleFonts.montserrat(
                //           fontSize: 13,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "Tel no. : ",
                            style: TextStyle(
                              fontFamily: "ButlerBlack",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "+91 6362248179",
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: telno)).then(
                          (_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Telphone number is copied"),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.copy),
                    )
                  ],
                ),
              ],
            ),
          )
        ];
      },
    );
  }
}
