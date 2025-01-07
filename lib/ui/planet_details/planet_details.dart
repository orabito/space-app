import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/models/planet.dart';

import '../../style/reusable_components/assets_manager.dart';
import '../../style/reusable_components/color_manager.dart';

class PlanetDetails extends StatelessWidget {
  PlanetDetails({super.key});

  static const String routeName = "PlanetDetails";
  final Flutter3DController controller = Flutter3DController();

  @override
  Widget build(BuildContext context) {
    Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AssetsManager.homeTop,
                width: double.infinity,
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.transparent, ColorManager.secondary],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            planet.spaceName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: ColorManager.tertiary),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "${planet.title}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: ColorManager.tertiary),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: SafeArea(
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          foregroundColor: ColorManager.tertiary,
                          backgroundColor: ColorManager.primary,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios)),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Flutter3DViewer(
                      src: "assets/models/${planet.model}",
                      controller: controller,
                    ),
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    planet.about,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Distance from Sun (km): ${planet.distanceFromSun}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Length of Day (hours): ${planet.lengthOfDay}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    " Orbital Period (Earth years): ${planet.orbitalPeriod}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Radius (km) :  ${planet.radius}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Mass (kg) : ${planet.mass}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Gravity (m/s²) : ${planet.gravity}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Surface Area (km²) :  ${planet.surfaceArea}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorManager.tertiary),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
