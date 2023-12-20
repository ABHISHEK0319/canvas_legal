import 'package:flutter/material.dart';
import 'package:canvas_legal/constant/colors.dart';

class MobCorePractice extends StatefulWidget {
  const MobCorePractice({
    Key? key,
  }) : super(key: key);

  @override
  State<MobCorePractice> createState() => _MobCorePracticeState();
}

class _MobCorePracticeState extends State<MobCorePractice> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //
      //
      // color: Colors.redAccent,
      //height: size.height,

      width: size.width,
      //padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: RichText(
              text: TextSpan(
                text: 'Core ',
                style: const TextStyle(
                  fontFamily: "ButlerRegular",
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Practices',
                    style: TextStyle(
                      fontFamily: "ButlerRegular",
                      color: CanvasLegalColors.Blue[1],
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            //height: size.height * 0.5,
            child: const MobCorePracticeItems(),
          ),
          // const AboutUs(),
        ],
      ),
    );
  }
}

class MobCorePracticeItems extends StatefulWidget {
  const MobCorePracticeItems({Key? key}) : super(key: key);

  @override
  State<MobCorePracticeItems> createState() => _MobCorePracticeItemsState();
}

class _MobCorePracticeItemsState extends State<MobCorePracticeItems> {
  // Here left right button define for scrolling
  final scrollController = ScrollController();

  void scrollLeft() {
    scrollController.animateTo(
      scrollController.offset - 400, // Adjust the value as needed

      duration:
          const Duration(milliseconds: 500), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

  void scrollRight() {
    scrollController.animateTo(
      scrollController.offset + 400, // Adjust the value as needed
      duration:
          const Duration(milliseconds: 500), // You can adjust the duration
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      //constraints: const BoxConstraints.expand(),
      child: Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            child: Image.asset(
              "assets/1x/Core practice shape.png",
              //height: 80,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            children: [
              Expanded(
                //flex: 1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18,
                        // left: 1.5,
                        // right: 1.5,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: scrollLeft,
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        slivers: <Widget>[
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: scrollRight,
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  final String icon, title;
  VoidCallback coreItemClick;
  IconAndText({
    Key? key,
    required this.icon,
    required this.title,
    required this.coreItemClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: coreItemClick,
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 45,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'ButlerRegular',
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// List of items Widget define

List<Widget> listcoreitem = <Widget>[
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 1.png',
    title: 'Dispute \nResolution',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 2.png',
    title: 'Real Estate \nAnd Construction',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 3.png',
    title: 'Corporate \n& Commercial',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 4.png',
    title: 'Corporate \nSecretarial',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 5.png',
    title: 'white \nCollar Crime',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 6.png',
    title: 'Employment',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 7.png',
    title: 'Start-Ups',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 8.png',
    title: 'Intellectual \nProperty',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 9.png',
    title: 'Data Protection \n& Privary',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
  IconAndText(
    icon: 'assets/images/Asset 10.png',
    title: 'NRI \nServices',
    coreItemClick: () {},
  ),
  const SizedBox(width: 10),
].toList();
