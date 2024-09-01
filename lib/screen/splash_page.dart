import 'dart:async';

import 'package:flutter/material.dart';
import 'package:invoiceapp/utils/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds:2),
      (timer) {
        Navigator.of(context).pushReplacementNamed('/add');
      },
    );
    return Scaffold(
      backgroundColor: primatyColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Container(
              height: 180,
              width: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/bill-removebg-preview.png'),
                ),
              ),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Invoice',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Pro',
                  style: TextStyle(
                      color: secColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(color: Colors.white,backgroundColor: Colors.blue,),
          )
        ],
      ),
    );
  }
}
