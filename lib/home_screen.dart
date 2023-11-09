import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_toggle/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Scaffold(
        body: Center(
          child: Transform.scale(
              scale: 3,
              child: Switch(
                value: Provider.of<ThemeProvider>(context).isDark,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false).changeTheme();
                },
              )),
        ),
      ),
    );
  }
}
