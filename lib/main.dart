import 'package:flutter/material.dart';
import 'package:homepage_shopify_provider/models/advertisement_model.dart';
import 'package:homepage_shopify_provider/models/advertisement_provider.dart';
import 'package:homepage_shopify_provider/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(FutureProvider<List<AdvertisementModel>>(
    create: (context) => AdvertisementProvider().loadAdvertisement(),
    initialData: const [],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
