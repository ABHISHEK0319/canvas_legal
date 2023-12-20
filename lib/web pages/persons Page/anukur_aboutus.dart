import 'package:flutter/material.dart';

class AnkurAboutUs extends StatelessWidget {
  const AnkurAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.keyboard_arrow_left_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(child: Text("Details of ANKUR TRIPATHI")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.redAccent,
                    child: Image.asset(
                      "assets/images/About Us icon.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
