import 'package:flutter/material.dart';

class TemperatureWidget extends StatefulWidget {
  final int degre;
  final String hour;
  final bool current = false;

  const TemperatureWidget({super.key, required this.degre, required this.hour, current});

  @override
  State<TemperatureWidget> createState() => _TemperatureWidgetState();
}

class _TemperatureWidgetState extends State<TemperatureWidget> {
  @override
  Widget build(BuildContext context) {
    Color color =const Color.fromARGB(107, 46, 51, 90);
    if (widget.current) {
       color =const Color.fromARGB(255, 90, 46, 46);
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 10, 4, 10),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
              width: 1, color: const Color.fromARGB(162, 151, 112, 164)),
          borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          Text(
            widget.hour,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
          const Image(
            image: AssetImage('assets/images/Moon_cloud_mid_rain.png'),
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 10),
          Text(
            '${widget.degre}°',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
