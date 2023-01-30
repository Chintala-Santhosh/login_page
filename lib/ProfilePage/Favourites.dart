import 'package:flutter/material.dart';

import '../HomePage/HomePage.dart';


void main() => runApp(Favourites());

class Favourites extends StatefulWidget {
  @override
  State<Favourites> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourites"),
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 130, left: 170, right: 170),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/Bookings.png',
                  ),
                  borderRadius: (BorderRadius.circular(150)),
                )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("No Favorites",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                  "Tap on the heart to add to your favourites, see them here at a glance",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 120),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.only(
                        left: 110, right: 110, top: 8, bottom: 8),
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Explore Now",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ],
        )));
  }
}
