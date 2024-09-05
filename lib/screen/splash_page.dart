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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Container(
              height: 700,
              width: 700,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/invoice.png'),
                ),
              ),
            ),
          ),
          //
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: CircularProgressIndicator(color: Colors.white,backgroundColor: Colors.blue,),
          // )
        ],
      ),
    );
  }
}
