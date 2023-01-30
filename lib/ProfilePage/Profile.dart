import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'EmployeeProfile.dart';
import 'Favourites.dart';
import 'MyBookings.dart';
import 'Orders.dart';
import 'Points.dart';
import 'Saved_Places.dart';
import 'Settings.dart';

void main() => runApp(MaterialApp(
      home: Profile1(),
    ));

class Profile1 extends StatefulWidget {
  State<Profile1> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.passthrough,
            children: [
          SingleChildScrollView(
            child: Container(
                width: 500,
                height: 1200,
                padding: new EdgeInsets.only(top: 50),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                  color: Colors.white,
                  child: Column(children: <Widget>[
                    ListTile(
                      dense: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()));
                      },
                      tileColor: Colors.green.shade50,
                      trailing: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.edit,
                            color: Colors.redAccent,
                            shadows: [Shadow(blurRadius: double.minPositive)]),
                      ),
                      leading:
                          Icon(Icons.person, size: 100, color: Colors.white),
                      title: Text('Isthara Parks',
                          style: TextStyle(fontSize: 30.0)),
                      subtitle: Text("\n+91 01234567890\nabcdfg@gmail.com.com",
                          style: TextStyle(fontSize: 18.0,color:Colors.black
                          )),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Text(
                        "Co-Living",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      )
                    ]),
                    Container(
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyBookings()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                tileColor: Colors.white,
                                title: Text(
                                  "My Bookings",
                                  style: TextStyle(fontSize: 25),
                                ),
                                leading: Icon(Icons.date_range, size: 40),
                                trailing:
                                    Icon(Icons.arrow_forward_ios_outlined)),
                          ),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Favourites()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Favourite Properties",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading:
                                      Icon(Icons.favorite_outline, size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SavedPlaces()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Saved Places",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading: Icon(Icons.save, size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Text(
                        "Food Court",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      )
                    ]),
                    Container(
                      child: Column(
                        children: [
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Orders()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Order",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading: Icon(Icons.shopping_bag_outlined,
                                      size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Points()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Points",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading: Icon(
                                      Icons.align_vertical_bottom_outlined,
                                      size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Settings()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Setings",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading: Icon(Icons.settings, size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined))),
                          Card(
                              child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EmployeeProfile()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  tileColor: Colors.white,
                                  title: Text(
                                    "Employee Profile",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  leading:
                                      Icon(Icons.person_add_outlined, size: 40),
                                  trailing:
                                      Icon(Icons.arrow_forward_ios_outlined)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Text(
                        "Student Living",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      )
                    ]),
                    Card(
                      child: ListTile(
                          onTap: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          tileColor: Colors.white,
                          title: Text(
                            "Join as Student",
                            style: TextStyle(fontSize: 25),
                          ),
                          leading:
                              Icon(Icons.person_add_alt_outlined, size: 40),
                          trailing: Icon(Icons.arrow_forward_ios_outlined)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(children: [
                      Text(
                        "Support",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      )
                    ]),
                    Card(
                      child: ListTile(
                          onTap: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          tileColor: Colors.white,
                          title: Text(
                            "Call Support",
                            style: TextStyle(fontSize: 25),
                          ),
                          leading: Icon(Icons.call_outlined, size: 40),
                          trailing: Icon(Icons.arrow_forward_ios_outlined)),
                    ),
                    Card(
                      child: ListTile(
                          onTap: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          tileColor: Colors.white,
                          title: Text(
                            "Refer and Earn",
                            style: TextStyle(fontSize: 25),
                          ),
                          leading: Icon(Icons.money_outlined, size: 40),
                          trailing: Icon(Icons.arrow_forward_ios_outlined)),
                    ),
                    Card(
                      child: ListTile(
                          onTap: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          tileColor: Colors.white,
                          title: Text(
                            "Account",
                            style: TextStyle(fontSize: 25),
                          ),
                          leading:
                              Icon(Icons.manage_accounts_outlined, size: 40),
                          trailing: Icon(Icons.arrow_forward_ios_outlined)),
                    ),
                    Center(
                        child: Text(
                      "App Version 9.1.7",
                      style: TextStyle(fontSize: 25),
                    )),
                  ]
                      //
                      ),
                )),
          ),
          Positioned(
              bottom: 0,
              right: 1,
              width: 400,
              child: Container(color: Colors.white,
                height: 50,
                width: 300,
                child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(
                              left: 0, right: 0, top: 8, bottom: 12),
                          backgroundColor: Colors.red,

                          elevation: 1,
                          // backgroundColor: Colors.deepOrangeAccent
                        ),
                        onPressed: null,
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))),
              ))
        ]));
  }
}
