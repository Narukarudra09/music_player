import 'package:flutter/material.dart';

import 'Music_screen/music_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme: AppBarTheme(
            color: Colors.grey[100],
          ),
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
        home: const MusicScreen());
  }
}
