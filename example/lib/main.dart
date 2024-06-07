import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          children: [
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default Text",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default Text",
                backgroundColor: Colors.red,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.blue,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.blue,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Custom Size",
                backgroundColor: Colors.green,
                size: 60,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Size",
                backgroundColor: Colors.amber,
                size: 70,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.zero,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.circular(15),
                size: 55,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Elevation",
                elevation: 4,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Border",
                backgroundColor: Colors.grey.shade300,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Initicon(
                text: "Border Elevation",
                elevation: 4,
                backgroundColor: Colors.grey.shade300,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Style",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
