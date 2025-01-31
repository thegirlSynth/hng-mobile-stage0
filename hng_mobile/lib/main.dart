import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HNG Stage 0 task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text(
              'Welcome to HNG stage 0',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple[800]),
            ),

            const Text(
              'This project is hosted on Github.',
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://github.com/thegirlSynth/hng-mobile-stage0"));
                  },
                  child: const Text("View Github Repo"),
                ),

                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse("http://hng.tech/hire/flutter-developers"));
                  },
                  child: const Text("Hire a Flutter Developer"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
