import 'package:flutter/material.dart';
import 'package:news_line_app/core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: customText('Home Page'),
      ),
    );
  }
}
