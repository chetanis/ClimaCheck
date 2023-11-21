import 'package:blur/blur.dart';
import 'package:clima_check/controller/weather_Controller.dart';
import 'package:clima_check/model/current_weather.dart';
import 'package:clima_check/widgets/loading_widget.dart';
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
  WeatherController weatherController = WeatherController();
  CurrentWeather? currentWeather;

  @override
  void initState() {
    super.initState();
    initializeWeather();
  }

  Future<void> initializeWeather() async{
    currentWeather = await weatherController.initializeWeather();
    setState(() {    
    });
  }

  @override
  Widget build(BuildContext context) {
    final heightOfScreen = MediaQuery.of(context).size.height;
    final widthOfScreen = MediaQuery.of(context).size.width;
    const radiousPanel = BorderRadius.vertical(top: Radius.circular(35));

    //loading page
    if(currentWeather==null){
      return const LoadingWidget();
    }
    
    return Scaffold(
      body: SlidingUpPanel(
        header: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(109, 0, 0, 0),
          ),
          margin: EdgeInsets.fromLTRB(widthOfScreen / 2 - 25, 7, 0, 0),
          width: 50,
          height: 5,
        ),
        borderRadius: radiousPanel,
        minHeight: heightOfScreen * 0.37,
        maxHeight: heightOfScreen * 0.8,
        color: const Color(0x002E335A),
        body: const MainImageWidget(),
        panelBuilder: (controller) =>
            PanelWidget(controller: controller).frosted(
          blur: 12,
          frostColor: const Color(0x002E335A),
          borderRadius: radiousPanel,
        ),
      ),
    );
  }
}
