import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../constants/themes.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListWheelScrollView(
                //scrollDirection: Axis.horizontal,
                itemExtent: MediaQuery.of(context).size.height * 0.8,

                children: [
                  Column(
                    children: [
                      const Text(
                        "CAR 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset('assets/images/Glass_Prism0002.png'),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "CAR 2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset('assets/images/Glass_Prism0001.png'),
                    ],
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
