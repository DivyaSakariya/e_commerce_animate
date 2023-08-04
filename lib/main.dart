import 'package:e_commerce_animate/views/screens/detail_page.dart';
import 'package:e_commerce_animate/views/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/productController.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => const DetailPage(),
      },
    );
  }
}
