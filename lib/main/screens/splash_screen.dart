import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/NavRoutes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: theme.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            "assets/onboarding_art.svg",
            height: MediaQuery.of(context).size.height / 1.4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.4,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, NavRoutes().main);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
