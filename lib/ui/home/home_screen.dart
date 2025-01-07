import 'package:flutter/material.dart';
import 'package:space_app/models/planet.dart';

import 'package:space_app/ui/home/widget/header_widget.dart';
import 'package:space_app/ui/planet_details/planet_details.dart';
import '../../style/reusable_components/color_manager.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if (controller.page! % 1 == 0) {
        selectedIndex = controller.page!.toInt();
        setState(() {});
      }
    });
  }

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemBuilder: (context, index) => Image.asset(
                  "assets/images/${Planet.planets[index % 9].image}",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(
                      style: FilledButton.styleFrom(
                          foregroundColor: ColorManager.tertiary,
                          backgroundColor: ColorManager.primary,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16)),
                      onPressed: () {
                        if(selectedIndex!=0){
                          controller.animateToPage((selectedIndex--), duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        }
                        else {
                          selectedIndex--;
                        }
        
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  Text(Planet.planets[selectedIndex%9].spaceName,style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold,color: ColorManager.tertiary
                  ),),
                  FilledButton(
                      style: FilledButton.styleFrom(
                          foregroundColor: ColorManager.tertiary,
                          backgroundColor: ColorManager.primary,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16)),
                      onPressed: () {
        
                          controller.animateToPage((selectedIndex++), duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        
                      },
                      child: Icon(Icons.arrow_forward_ios)),
        
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FilledButton(
                style:FilledButton.styleFrom(
                    backgroundColor: ColorManager.primary,
                    foregroundColor: ColorManager.tertiary,
                    padding: EdgeInsets.all(16)
                    ,textStyle: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                )
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(PlanetDetails.routeName,arguments:Planet.planets[selectedIndex%9]);
                },
                child: Row(mainAxisAlignment: MainAxisAlignment. spaceBetween,
                  children: [
                    Text(
                      "Explore ${Planet.planets[selectedIndex%9].spaceName}",
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            )  ],
        ),
      ),
    );
  }
}
