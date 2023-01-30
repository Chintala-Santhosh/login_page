import 'package:flutter/material.dart';


void main() => runApp(Orders());

class Orders extends StatefulWidget {
  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Orders"),
        ),
        body: Container(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Orders()));
                },
                child: Text(
                  "Self Orders",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Orders()));
                },
                child: Text(
                  "Guest Orders",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding:
                        EdgeInsets.only(left: 35, right: 35, top: 4, bottom: 4),
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Orders()));
                },
                child: Text(
                  "Guest",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ]),
          Center(
              child: Column(children: [
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
              child: Text("Your plate is empty",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Fill it up with your favourite food",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
            ),
          ]))
        ])));
  }
}
