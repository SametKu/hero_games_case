import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_games/core/states/app_settings.dart';
import 'package:hero_games/product/init/navigation/navigation_manager.dart';
import 'package:hero_games/product/init/navigation/navigation_route.dart';
import 'package:provider/provider.dart';

void main() {
  Get.put(AppSettings());
  runApp(MultiProvider(providers: [
    Provider(
      create: (context) => NavigationService(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: NavigationRoute().generateRoute,
      navigatorKey: AppSettings.instance.navigatorKey,
    );
  }
}
