// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:canvas_legal/constant/colors.dart';
import 'package:canvas_legal/mobile%20pages/mobaboutus.dart';
import 'package:canvas_legal/mobile%20pages/mobcorepracticepg.dart';
import 'package:canvas_legal/mobile%20pages/mobpeoplepg.dart';
import 'package:canvas_legal/web%20pages/bottombar.dart';
import 'package:canvas_legal/web%20pages/coreteam.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// class MyCustomScrollBehavior extends MaterialScrollBehavior {
//   // Override behavior methods and getters like dragDevices
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//         PointerDeviceKind.touch,
//         PointerDeviceKind.mouse,
//         // etc.
//       };
// }

class SingleMobPage extends StatefulWidget {
  const SingleMobPage({super.key});

  @override
  State<SingleMobPage> createState() => _SingleMobPageState();
}

class _SingleMobPageState extends State<SingleMobPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final _containerHeight = 465.0;
  final ScrollController _scrollController = ScrollController();

  void _scrollToTap(int index) {
    _scrollController.animateTo(
      index * _containerHeight,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  final List<Widget> _widgetOptions = <Widget>[
    const MobPeoplePage(),
    const MobCorePractice(),
    const MobAboutUs(),
    // const CoreTeamWidget(),
    //const BottomBarWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _widgetOptions.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: s.width,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: s.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: s.width,
                                    child: Center(
                                      child: _widgetOptions[index],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          SizedBox(
            height: s.height * 0.3,
            child: SearchPlusComponents(
              context: context,
              scaffoldKey: _scaffoldKey,
              s: s,
            ),
          ),
        ],
      ),
      endDrawer: Padding(
        padding: EdgeInsets.only(top: s.height * 0.08, right: 40),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 220,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 172, 174, 176),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Drawer(
              elevation: 0.5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      // Important: Remove any padding from the ListView.
                      //padding: const EdgeInsets.all(15),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(0);
                            _scrollToTap(0);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 25.0, left: 15.0),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: Text(
                                'People',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  height: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(1);
                            _scrollToTap(1);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 15.0),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: Text(
                                'Expertise',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  height: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(2);
                            _scrollToTap(2);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 15.0),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: Text(
                                'About Us',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  height: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(3);
                            _scrollToTap(3);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 15.0),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: Text(
                                'Research & Knowledge',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  height: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(3);
                            _scrollToTap(3);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, left: 15.0),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: Text(
                                'Contact us',
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  height: 0.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        // ListTile(
                        //   title: const Text(
                        //     'People',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 0.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 0,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(0);
                        //     _scrollToTap(0);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text(
                        //     'Expertise',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 1,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(1);
                        //     _scrollToTap(1);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text(
                        //     'About Us',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 2,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(2);
                        //     _scrollToTap(2);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text(
                        //     'Research & Knowledge',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 3,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(3);
                        //     _scrollToTap(3);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text(
                        //     'Careers',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 4,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(4);
                        //     _scrollToTap(4);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                        // ListTile(
                        //   title: const Text(
                        //     'Contact us',
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       height: 1.5,
                        //     ),
                        //   ),
                        //   selected: _selectedIndex == 5,
                        //   onTap: () {
                        //     // Update the state of the app
                        //     _onItemTapped(5);
                        //     _scrollToTap(5);
                        //     // Then close the drawer
                        //     Navigator.pop(context);
                        //   },
                        // ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),

      // floating button...
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollToTap(0);
        },
        backgroundColor: CanvasLegalColors.Blue[1],
        child: const Icon(Icons.arrow_circle_up_rounded),
      ),
    );
  }
}

class SearchPlusComponents extends StatefulWidget {
  const SearchPlusComponents({
    super.key,
    required this.context,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.s,
  }) : _scaffoldKey = scaffoldKey;

  final BuildContext context;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  final Size s;

  @override
  State<SearchPlusComponents> createState() => _SearchPlusComponentsState();
}

class _SearchPlusComponentsState extends State<SearchPlusComponents> {
  @override
  Widget build(BuildContext context) {
    String telno = " +91 6362248179";

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: const Color(0xFF005067),
        ),
        Positioned(
          top: 30,
          child: Container(
            width: widget.s.width * 0.9,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(4, 4),
                  color: Colors.black38,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              image: const DecorationImage(
                scale: 2.8,
                image: AssetImage("assets/images/Logo.png"),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
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
                        child: const Icon(
                          Icons.call,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(4.0),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: const Icon(
                    //       Icons.search,
                    //       size: 15,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),
                    IconButton(
                      onPressed: () {
                        widget._scaffoldKey.currentState?.openEndDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: widget.s.width * 0.01,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
