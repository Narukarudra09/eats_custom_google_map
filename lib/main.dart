import 'package:eats_custom_google_map/eats_map/provider/custom_map_provider.dart';
import 'package:eats_custom_google_map/eats_map/screen/custom_map.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => CustomMapProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CustomMap(),
        );
      }),
    );
  }
}
