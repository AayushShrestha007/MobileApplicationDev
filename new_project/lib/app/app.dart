import 'package:flutter/material.dart';
import 'package:new_project/screen/social_media_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialMediaScreen(),
    );
  }
}
