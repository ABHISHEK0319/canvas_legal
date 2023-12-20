import 'package:canvas_legal/constant/colors.dart';
import 'package:flutter/material.dart';

class AbhishekAboutUs extends StatelessWidget {
  const AbhishekAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:CanvasLegalColors.Blue,
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.keyboard_arrow_left_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text("Details".toUpperCase())),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         color: Colors.black,
            //         child: const Column(
            //           children: [
            //             Text.rich(
            //               TextSpan(
            //                 children: [

            //                 ]
            //               )
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         padding: const EdgeInsets.all(110.0),
            //         color: Colors.redAccent,
            //         child: Image.asset(
            //           "assets/images/About Us icon.png",
            //           fit: BoxFit.contain
            //         ),
            //       ),
            //     ),
            //   ],
            // )

            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 50, right: 50, bottom: 20),
                  child: PhysicalModel(
                    elevation: 5.0,
                    color: Colors.lightBlue.shade50,
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                         horizontal: 10),
                                    child: ListTile(
                                      minVerticalPadding: 40.0,
                                      
                                      title: Text(
                                        "ABHISHEK P.N",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 35,
                                          fontFamily: "ButlerBlack",
                                        ),
                                      ),
                                      subtitle: Text(
                                        """Licensed Attorney, Bar Council of India \nPractise Areas -  Real Estate & Construction, NRI Services, \nData Protection & Privacy """,
                                        style: TextStyle(
                                           color: Colors.black45,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
