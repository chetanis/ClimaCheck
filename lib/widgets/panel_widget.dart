import 'dart:math';

import 'package:clima_check/widgets/Temperature_widget.dart';
import 'package:flutter/material.dart';

enum ForecastType { hourly, weekly }

class PanelWidget extends StatefulWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  ForecastType currentForecast = ForecastType.hourly;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  currentForecast = ForecastType.hourly;
                });
              },
              child: const Text(
                'Hourly Forecast',
                style: TextStyle(color: Color.fromARGB(121, 255, 255, 255)),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentForecast = ForecastType.weekly;
                });
              },
              child: const Text(
                'Weekly Forecast',
                style: TextStyle(color: Color.fromARGB(121, 255, 255, 255)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: currentForecast == ForecastType.hourly
                        ? const [
                          Color.fromARGB(70, 198, 140, 236),
                          Color.fromARGB(200, 198, 140, 236),
                          Color.fromARGB(70, 198, 140, 236)
                        ]
                        : const [Color.fromARGB(27, 255, 255, 255),Color.fromARGB(27, 255, 255, 255)],
                )),
                height: 2,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: currentForecast == ForecastType.weekly
                      ? const [
                          Color.fromARGB(70, 198, 140, 236),
                          Color.fromARGB(200, 198, 140, 236),
                          Color.fromARGB(70, 198, 140, 236)
                        ]
                      : const [Color.fromARGB(27, 255, 255, 255),Color.fromARGB(27, 255, 255, 255)],
                )),
                height: 2,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        buildForecast(),
      ],
    );
  }

  Widget buildHourlyForecast() {
    int hour = DateTime.now().hour;
    List<Widget> list = [];
    for (var i = 0; i < 24; i++) {
      list.add(const SizedBox(
        width: 13,
      ));
      if (i == hour) {
        list.add(TemperatureWidget(degre: Random().nextInt(30), hour: 'Now'));
      } else if (i < 13) {
        list.add(TemperatureWidget(degre: Random().nextInt(30), hour: '$i AM'));
      } else {
        list.add(TemperatureWidget(
            degre: Random().nextInt(30), hour: '${i - 12} PM'));
      }
    }
    list.add(const SizedBox(
      width: 13,
    ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list,
      ),
    );
  }

  Widget buildWeeklyForecast() {
    List<Widget> list = [];
    for (var i = 10; i < 18; i++) {
      list.add(const SizedBox(
        width: 13,
      ));
      list.add(TemperatureWidget(degre: Random().nextInt(30), hour: '$i/11'));
    }
    list.add(const SizedBox(
      width: 13,
    ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: list,
      ),
    );
  }

  Widget buildForecast() {
    if (currentForecast == ForecastType.hourly) {
      return buildHourlyForecast();
    } else {
      return buildWeeklyForecast();
    }
  }
}
