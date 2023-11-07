import 'package:clima_check/widgets/Temperature_widget.dart';
import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller ;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DegreeWidget(),

      ],
    );
  }
  
  Widget DegreeWidget() => const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TemperatureWidget(degre: 10, hour: 1),
      TemperatureWidget(degre: 15, hour: 2),
      TemperatureWidget(degre: 17, hour: 3),
      TemperatureWidget(degre: 14, hour: 4),
      TemperatureWidget(degre: 15, hour: 5),
      TemperatureWidget(degre: 1, hour: 6),
    ],
  );
  
}

