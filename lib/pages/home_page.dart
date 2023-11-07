import 'package:clima_check/widgets/main_image_widget.dart';
import 'package:clima_check/widgets/panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        color: const Color(0xF02E335A),
        body: const MainImageWidget(),
        panelBuilder: (controller) => PanelWidget(controller: controller),
      ),
    );
  }
}
