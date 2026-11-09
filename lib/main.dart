import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/screens/sign_in_screen.dart';
import 'Provider/favorite_provider.dart';
import 'Provider/auth_provider.dart';
import 'package:wisata_candi/data/candi_data.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DetailScreen(candi: candiList[1]),
      //home: ProfileScreen(),
      home: DetailScreen(candi: candiList[1]),

    );
  }
}