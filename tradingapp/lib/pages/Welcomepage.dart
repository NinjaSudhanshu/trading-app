import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradingapp/pages/Home.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  @override
  void initState() {
    super.initState();
    print("Welcomepage initState called"); // Debug print
    Future.delayed(const Duration(seconds: 5), () {
      print("Navigating to Home"); // Debug print
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/Logo.svg"),
                  const SizedBox(width: 10),
                  const Text(
                    "Algo Trade",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 80),
            child: Text(
              "India's Highly Rated Cryptocurrency Exchange",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
