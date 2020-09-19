import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.white,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new SecondScreen(),
      backgroundColor: Colors.black,
      title: new Text('Welcome to MoviSic',
          textScaleFactor: 2,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      image: new Image.network(
          'https://cdn.business2community.com/wp-content/uploads/2014/06/movie-film-reel5-439x308.png'),
      loadingText: Text("Loading..."),
      photoSize: 150.0,
      loaderColor: Colors.green,
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
          child: Text(
        "Sample Page",
        textScaleFactor: 2,
      )),
    );
  }
}
