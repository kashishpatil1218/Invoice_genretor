import 'package:flutter/material.dart';

import '../screen/addpage.dart';
import '../screen/splash_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/': (context) => const SplashPage(),
  '/add': (context) => const Addpage(),
};

