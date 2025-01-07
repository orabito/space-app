import 'package:flutter/material.dart';
import 'package:space_app/style/reusable_components/assets_manager.dart';
import 'package:space_app/style/reusable_components/color_manager.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      body: Stack(
        children: [
          Image.asset(
            AssetsManager.loginImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: FittedBox(
                        child: Text(
                          "Explore\nThe\nUniverse ",
                          style: TextStyle(
                              color: ColorManager.tertiary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.transparent,
                        ))
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child:
              FilledButton(
                style:FilledButton.styleFrom(
                  backgroundColor: ColorManager.primary,
                  foregroundColor: ColorManager.tertiary,
                  padding: EdgeInsets.all(16)
                    ,textStyle: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                )
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                },
                child: Row(mainAxisAlignment: MainAxisAlignment. spaceBetween,
                  children: [
                    Text(
                      "Explore",
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
