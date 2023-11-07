import 'package:flutter/material.dart';

class TemperatureWidget extends StatefulWidget {
  final int degre, hour;

  const TemperatureWidget({super.key, required this.degre, required this.hour});

  @override
  State<TemperatureWidget> createState() => _TemperatureWidgetState();
}

class _TemperatureWidgetState extends State<TemperatureWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          Text('${widget.hour}PM',style: const TextStyle(color: Colors.white),),
          const SizedBox(height: 10),
          const Image(
            image: AssetImage('images/Moon_cloud_mid_rain.png'),
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 10),
          Text('${widget.degre}°',style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
