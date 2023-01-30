import 'package:flutter/material.dart';
import 'All_My_Bookings.dart';
import 'Canceled_My_Bookings.dart';
import 'Completed_My_Bookings.dart';
import 'Ongoing_My_Bookings.dart';
import 'Upcoming_My_Bookings.dart';

void main() => runApp(MyBookings());

class MyBookings extends StatefulWidget {
  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text("My Bookings"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Upcoming",
                  ),
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "Canceled",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [All(), Upcoming(), Ongoing(), Canceled(), Completed()],
            )));
  }
}
