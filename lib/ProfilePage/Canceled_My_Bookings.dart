import 'package:flutter/material.dart';
void main()=>runApp(Canceled());
class Canceled extends StatefulWidget{
  @override
  State<Canceled> createState() => _MyBookingsState();

}
class _MyBookingsState extends State<Canceled>{
  @override
  Widget build(BuildContext context){
    return  Center(
      child: Column(
        children: [Padding(padding:EdgeInsets.only(top: 220,left: 170,right: 170),
            child: ClipRRect(
              child: Image.asset('assets/images/Bookings.png',),
              borderRadius:(BorderRadius.circular(150)),
            )
        ),
          SizedBox(height: 20,),
          Center(
            child: Text("No Canceled Bookings Yet!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          )
        ],
      ),
    );}}