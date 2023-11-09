import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_toggle/home_screen.dart';
import 'package:theme_toggle/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const App()));
}
