import 'package:flutter/material.dart';
import 'package:canvas_legal/constant/colors.dart';

class CorePractice extends StatefulWidget {
  const CorePractice({
    Key? key,
  }) : super(key: key);

  @override
  State<CorePractice> createState() => _CorePracticeState();
}

class _CorePracticeState extends State<CorePractice> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //
      //
      color: Colors.red,
      //height: size.height,

      width: size.width,
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: RichText(
              text: TextSpan(
                text: 'Core ',
                style: const TextStyle(
                  fontFamily: "ButlerRegular",
                  color: Colors.black,
                  fontSize: 72,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Practices',
                    style: TextStyle(
                      fontFamily: "ButlerRegular",
                      color: CanvasLegalColors.Blue[1],
                      fontSize: 72,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.9,
            child: const CorePracticeItems(),
          ),
          // const AboutUs(),
        ],
      ),
    );
  }
}

class CorePracticeItems extends StatefulWidget {
  const CorePracticeItems({Key? key}) : super(key: key);

  @override
  State<CorePracticeItems> createState() => _CorePracticeItemsState();
}

class _CorePracticeItemsState extends State<CorePracticeItems>
    with TickerProviderStateMixin {
  // AnimatedController for wave piece of code....
  // late AnimationController _controller;
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     duration: const Duration(milliseconds: 3000),
  //     vsync: this,
  //   );
  //   _controller.repeat();
  // }
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
  // Widget _buildAnimation(BuildContext context, Widget? widget) {
  //   return SizedBox(
  //     width: MediaQuery.of(context).size.width,
  //     height: MediaQuery.of(context).size.height * 0.6,
  //     child: CustomPaint(
  //       painter:
  //           WavePainter(controller: _controller, waves: 3, waveAmplitude: 30),
  //     ),
  //   );
  // }

  // Here left right button define for scrolling
  final scrollController = ScrollController();

  //final _containerHeight = 850.0;

  void scrollLeft() {
    scrollController.animateTo(
      scrollController.offset - 700, // Adjust the value as needed

      duration:
          const Duration(milliseconds: 500), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

  void scrollRight() {
    scrollController.animateTo(
      scrollController.offset + 700, // Adjust the value as needed
      duration:
          const Duration(milliseconds: 500), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 250,
        constraints: const BoxConstraints.expand(),
        child: Stack(
          //alignment: Alignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  //flex: 1,
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 15, right: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: scrollLeft,
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomScrollView(
                          //reverse: true,

                          controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,

                          slivers: <Widget>[
                            SliverPadding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              sliver: SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) => Row(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: listcoreitem,
                                      ),
                                    ],
                                  ),
                                  //childCount: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: scrollRight,
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 120,
                )
              ],
            ),

            //const SizedBox(height: 140),
            Positioned(
              bottom: 0.0,
              child: Image.asset("assets/1x/Core practice shape.png"),
            )
            // AnimatedBuilder(
            //   animation: _controller,
            //   builder: _buildAnimation,
            // ),
          ],
        ));
  }
}

class IconAndText extends StatelessWidget {
  final String icon, title;
  const IconAndText({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          height: 160,
        ),
        const SizedBox(height: 15),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'ButlerRegular',
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

// List of items Widget define

List<Widget> listcoreitem = <Widget>[
  const SizedBox(width: 40),
  const IconAndText(
    icon: 'assets/images/Asset 1.png',
    title: 'Dispute \nResolution',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 2.png',
    title: 'Real Estate \nAnd Construction',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 3.png',
    title: 'Corporate \n& Commercial',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 4.png',
    title: 'Corporate \nSecretarial',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 5.png',
    title: 'white \nCollar Crime',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 6.png',
    title: 'Employment',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 7.png',
    title: 'Start-Ups',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 8.png',
    title: 'Intellectual \nProperty',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 9.png',
    title: 'Data Protection \n& Privary',
  ),
  const SizedBox(width: 80),
  const IconAndText(
    icon: 'assets/images/Asset 10.png',
    title: 'NRI \nServices',
  ),
  const SizedBox(width: 40),
].toList();
