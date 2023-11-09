// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:canvas_legal/constant/colors.dart';
import 'package:canvas_legal/pages/aboutus.dart';
import 'package:canvas_legal/pages/bottombar.dart';
import 'package:canvas_legal/pages/coreteam.dart';

import 'package:canvas_legal/pages/people.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'core_practice.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class SingleWebPage extends StatefulWidget {
  const SingleWebPage({super.key});

  @override
  State<SingleWebPage> createState() => _SingleWebPageState();
}

class _SingleWebPageState extends State<SingleWebPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final _containerHeight = 740.0;
  final ScrollController _scrollController = ScrollController();

  void _scrollToTap(int index) {
    _scrollController.animateTo(
      index * _containerHeight,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  final List<Widget> _widgetOptions = <Widget>[
    const NewDemoPage1(),
    const CorePractice(),
    const AboutUs(),
    const CoreTeamWidget(),
    const BottomBarWidget(),
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
                      return Container(
                        color: Colors.redAccent,
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
            child: searchPlusComponents(s),
          ),
        ],
      ),
      endDrawer: Padding(
        padding: EdgeInsets.only(top: s.height * 0.16, right: 80),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 172, 174, 176),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Drawer(
              elevation: 0.5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      // Important: Remove any padding from the ListView.
                      //padding: const EdgeInsets.all(15),
                      children: [
                        ListTile(
                          title: const Text(
                            'People',
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.2,
                            ),
                          ),
                          selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(0);
                            _scrollToTap(0);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(
                            'About us',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          selected: _selectedIndex == 1,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(1);
                            _scrollToTap(1);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(
                            'Expertise',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          selected: _selectedIndex == 2,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(2);
                            _scrollToTap(2);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(
                            'Research & Knowledge',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          selected: _selectedIndex == 3,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(3);
                            _scrollToTap(3);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(
                            'Careers',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          selected: _selectedIndex == 4,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(4);
                            _scrollToTap(4);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text(
                            'Contact us',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          selected: _selectedIndex == 5,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(5);
                            _scrollToTap(5);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                        ),
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

  Stack searchPlusComponents(Size s) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: const Color(0xFF005067),
        ),
        Positioned(
          top: 35,
          child: Container(
            width: s.width * 0.9,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(6, 6),
                  color: Colors.black38,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              image: const DecorationImage(
                scale: 1.6,
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
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          _scrollToTap(3);
                        },
                        child: const Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 32,
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.02,
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
