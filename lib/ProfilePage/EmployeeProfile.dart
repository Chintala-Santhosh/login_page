import 'package:flutter/material.dart';

import '../HomePage/HomePage.dart';

void main()=>runApp(EmployeeProfile());
class EmployeeProfile extends StatefulWidget{
  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();

}
class _EmployeeProfileState extends State<EmployeeProfile>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: Text("Employee Profile"),),
        body:Center(
            child: Column(
              children: [Padding(padding:EdgeInsets.only(top: 130,left: 170,right: 170),
                  child: ClipRRect(
                    child: Image.asset('assets/images/Bookings.png',),
                    borderRadius:(BorderRadius.circular(150)),
                  )
              ),
                SizedBox(height: 20,),
                Center(
                  child: Text("No employee's profile Yet!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                ),
                SizedBox(height:20),
                Center(child: Text("Please Add Your employee profiles",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),textAlign: TextAlign.center),),
                SizedBox(height: 300),
                TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
                        padding: EdgeInsets.only(
                            left: 80, right: 80, top: 8, bottom: 8),
                        foregroundColor: Colors.red,
                        elevation: 2,
                        backgroundColor: Colors.amber),
                    onPressed:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Add Employee Profile",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                    ))


              ],

            )));}}