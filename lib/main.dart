import 'package:flutter/material.dart';
import 'package:login_page/LoginPage/SignUpPage.dart';
import 'package:login_page/SearchPage/SearchPage.dart';
//
// import 'LoginPage/SignUpPage.dart';
//
// void main() {
// runApp(MaterialApp(
//   home: SignUpPage(),
// ));}
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                child: LayoutBuilder(
                  builder: (context, _) {
                    return IconButton(
                      icon: Icon(Icons.play_circle_filled),
                      iconSize: 50.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => SearchPage(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    );
                  },
                ),
                alignment: Alignment.bottomCenter,
              ),
              Positioned.fill(
                child: Center(
                  child: SignUpPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}