import 'package:flutter/material.dart';

import 'package:invoiceapp/utils/routes.dart';

void main() {
  runApp(const InVoiceApp());
}

class InVoiceApp extends StatelessWidget {
  const InVoiceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:routes
    );
  }
}