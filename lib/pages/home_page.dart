import 'package:culibrary/color_themes.dart';
import 'package:culibrary/provider/theme_provider.dart';
import 'package:culibrary/widgets/change_theme_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 'DarkMode'
            : 'LightMode';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '𝐂𝐔 𝐋𝐈𝐁𝐑𝐀𝐑𝐘',
          style: TextStyle(letterSpacing: 2),
        ),
        actions: [
          Row(
            children: [
              Text(
                theme,
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
              ),
              ChangeThemeButton(),
            ],
          )
        ],
      ),
      body: Center(
        child: Text(
          'How are you?',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
