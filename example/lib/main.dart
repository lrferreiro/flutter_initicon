import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
