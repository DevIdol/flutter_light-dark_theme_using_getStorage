import 'package:culibrary/model/theme_model.dart';
import 'package:culibrary/provider/theme_provider.dart';
import 'package:culibrary/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
        return MaterialApp(
          title: '𝐂𝐔 𝐋𝐈𝐁𝐑𝐀𝐑𝐘',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightMode,
          darkTheme: MyThemes.darkMode,
          home: const SplashScreen(),
        );
      },
    );
  }
}
