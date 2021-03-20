import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Wrap(
          children: [
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default Text",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default Text",
                backgroundColor: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.blue,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Default",
                backgroundColor: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Custom Size",
                backgroundColor: Colors.green,
                size: 60,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Size",
                backgroundColor: Colors.amber,
                size: 70,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.zero,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Border Radius",
                backgroundColor: Colors.brown,
                borderRadius: BorderRadius.circular(15),
                size: 55,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3),
              child: Initicon(
                text: "Elevation",
                elevation: 4,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
