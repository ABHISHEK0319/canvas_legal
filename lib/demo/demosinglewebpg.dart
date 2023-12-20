// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:canvas_legal/constant/colors.dart';
import 'package:canvas_legal/customs/popupcallmenu.dart';

import 'package:canvas_legal/web%20pages/aboutus.dart';
import 'package:canvas_legal/web%20pages/bottombar.dart';
import 'package:canvas_legal/web%20pages/core_practice.dart';
import 'package:canvas_legal/web%20pages/coreteam.dart';
import 'package:canvas_legal/web%20pages/people.dart';
import 'package:flutter/material.dart';

BuildContext context = context;

class SingleWebPagedemo extends StatefulWidget {
  const SingleWebPagedemo({super.key});

  @override
  State<SingleWebPagedemo> createState() => _SingleWebPagedemoState();
}

class _SingleWebPagedemoState extends State<SingleWebPagedemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _containerHeight = 650.0;

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final ScrollController _scrollController = ScrollController();

  void _scrollToTap(int index) {
    _scrollController.animateTo(
      index * _containerHeight,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  GlobalKey<FormState> itemkey = GlobalKey<FormState>();

  Future scrollToItem(int index) async {
    //final context = itemkey.currentContext!;
    final context = GlobalObjectKey(_widgetOptions[index]).currentContext!;

    await Scrollable.ensureVisible(context);
  }
//  Widget _widgets = Column(
//     children: [
//       Container( key: itemkey,  child: const PeoplePage()),
//       CorePractice(),
//       AboutUs(),
//       CoreTeamWidget(),
//       BottomBarWidget(),
//     ],
//   );

  final List<Widget> _widgetOptions = <Widget>[
    const PeoplePage(),
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
          //BodyPart(s: s, itemkey: itemkey),
          SizedBox(
            height: s.height * 0.3,
            child: searchPlusComponents(s, context),
          ),
        ],
      ),
      endDrawer: Padding(
        padding: EdgeInsets.only(top: s.height * 0.16, right: 80),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 300,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.white24,
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
                      //padding: const EdgeInsets.all(16),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          //selected: _selectedIndex == 0,
                          onTap: () {
                            // Update the state of the app
                            _onItemTapped(0);

                            ///_scrollToTap(0);
                            scrollToItem(0);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 25.0, left: 16.0, bottom: 10),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: const Text(
                                'People',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
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
                            // _scrollToTap(1);
                            scrollToItem(1);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 16.0, bottom: 10),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: const Text(
                                'Expertise',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
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
                            // _scrollToTap(2);
                            scrollToItem(2);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 16.0, bottom: 10),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: const Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
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
                            // _scrollToTap(3);
                            scrollToItem(3);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 16.0, bottom: 10),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: const Text(
                                'Research & Knowledge',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
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
                            _onItemTapped(4);
                            //_scrollToTap(4);
                            scrollToItem(4);
                            // Then close the drawer
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 16.0, bottom: 10),
                            child: SizedBox(
                              width: s.width * 1.0,
                              height: 20.0,
                              child: const Text(
                                'Contact us',
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
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

  Stack searchPlusComponents(Size s, context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          // height: 50,
          height: s.height * 0.08,
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
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
                      child: InkWell(
                          child: PopupCallMenu(
                        iconsize: 25,
                      )),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: const Icon(
                    //       Icons.search,
                    //       size: 30,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openEndDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 30,
                        ),
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

class BodyPart extends StatelessWidget {
  const BodyPart({
    super.key,
    required this.s,
    required this.itemkey,
  });

  final Size s;
  final GlobalKey<State<StatefulWidget>> itemkey;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        Column(
          children: [
            Container(key: itemkey, child: const PeoplePage()),
            Container(key: itemkey, child: const CorePractice()),
            Container(key: itemkey, child: const AboutUs()),
            Container(key: itemkey, child: const CoreTeamWidget()),
            Container(key: itemkey, child: const BottomBarWidget()),
          ],
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _chipsScrollController = ScrollController();
  String _currentChip = 'Chip 1';
  static const _chips = [
    'Chip 1',
    'Chip 2',
    'Chip 3',
    'Chip 4',
    'Chip 5',
    'Chip 6',
    'Chip 7',
    'Chip 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: 70,
          child: ListView.separated(
            controller: _chipsScrollController,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            scrollDirection: Axis.horizontal,
            itemCount: _chips.length,
            itemBuilder: (final BuildContext context, final int index) {
              return ChoiceChip(
                  key: GlobalObjectKey(_chips[index]),
                  label: Text(_chips[index]),
                  selected: _chips[index] == _currentChip,
                  onSelected: (final bool value) {
                    _currentChip = _chips[index];
                    Scrollable.ensureVisible(
                      GlobalObjectKey(_chips[index]).currentContext!,
                      alignment: 0.5,
                    );
                  });
            },
            separatorBuilder: (final BuildContext context, final int index) =>
                const SizedBox(width: 12),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const MyHomePage(
              title: 'Flutter Demo Home Page',
            ),
          ),
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
