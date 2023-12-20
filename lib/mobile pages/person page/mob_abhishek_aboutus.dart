import 'package:flutter/material.dart';

class MobAbhishekAboutUs extends StatelessWidget {
  const MobAbhishekAboutUs({super.key});

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
      body: const Placeholder(),
    );
  }
}
