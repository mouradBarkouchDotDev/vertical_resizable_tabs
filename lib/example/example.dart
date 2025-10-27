import 'package:flutter/material.dart';
import 'package:vertical_resizable_tabs/vertical_resizable_tabs.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vertical Resizable Tabs Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerticalResizableTabs Example'),
        centerTitle: true,
      ),
      body: VerticalResizableTabs(
        topTab: Container(
          color: Colors.indigo.shade100,
          child: const Center(
            child: Text(
              'Top Tab Content',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        bottomTab: Container(
          color: Colors.indigo.shade50,
          child: const Center(
            child: Text(
              'Bottom Tab Content',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        maxFraction: 0.8,
        minFraction: 0.2,
        radius: 16,
      ),
    );
  }
}
