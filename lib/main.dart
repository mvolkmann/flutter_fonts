import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the Dancing Script font.',
              style: GoogleFonts.dancingScript(),
            ),
            Text(
              'This is the "Dancing Script" font with styling.',
              style: GoogleFonts.getFont(
                'Dancing Script',
                textStyle: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Press Me'),
              onPressed: () => print('got press'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
                primary: Colors.red,
                onPrimary: Colors.yellow,
                textStyle: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
