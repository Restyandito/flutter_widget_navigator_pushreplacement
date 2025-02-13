import 'package:flutter/material.dart';
import 'package:flutter_widget_navigator_pushreplacement/views/bab5/bab5_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PushreplaceNavigationPage(),
    );
  }
}

class PushreplaceNavigationPage extends StatefulWidget {
  const PushreplaceNavigationPage({super.key});

  @override
  State<PushreplaceNavigationPage> createState() => _PushreplaceNavigationPageState();
}

class _PushreplaceNavigationPageState extends State<PushreplaceNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Push Replace Navigation",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Bab5DetailPage()),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Text('Go to Detail Page'),
          ),
        ),
      ),
    );
  }
}
