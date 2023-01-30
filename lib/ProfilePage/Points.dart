import 'package:flutter/material.dart';

void main() => runApp(Points());

class Points extends StatefulWidget {
  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Points"),
        ),
        body: Container(
            child: Padding(padding: EdgeInsets.only(top: 3,left: 5,right: 5),
        child:Column(children: [
             Card(shape: RoundedRectangleBorder(),
                 color: Colors.teal.shade700,
                 child:Padding(padding:EdgeInsets.only(top: 10,left: 70,right: 70,bottom: 20),
                     child:Text("Total available balance\n \n"
                     "0.00",style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),),),
              SizedBox(height: 15,),
              Row(children: [Text("Transactions History",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                SizedBox(width:20,),
                IconButton(onPressed: null, icon:Icon(Icons.filter_alt),iconSize: 25,),
                TextButton(onPressed: null, child: Text("RESET",style: TextStyle(color: Colors.red,fontSize: 22),))],),
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
                      child: Text("No Reward Points History",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center),
                    ),
                  ]))
            ]))));
  }
}
