import 'package:flutter/material.dart';
import '../screen/PDF/PDFView.dart';
import '../screen/addpage.dart';
import '../screen/edit_page.dart';
import '../screen/homePage.dart';
import '../screen/search_page.dart';
import '../screen/splash_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/': (context) => const SplashPage(),
  '/add': (context) => const Addpage(),
  '/home': (context) => const Homepage(),
  '/search': (context) => const Searchpage(),
  '/edit': (context) => const Editpage(),
  '/PDF': (context) => const Pdfview(),


};

