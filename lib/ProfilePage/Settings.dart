import 'package:flutter/material.dart';

void main() => runApp(Settings());

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _value1 = false;
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Settings"),
    ),
      body:Column(children:[
          Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // children:[Padding(padding:EdgeInsets.only(top: 20,left: 30,right: 30),child:
              //   Container(padding: EdgeInsets.only(left: 0,right:130 ),
              //     child: Column(
                    children: [
                      SizedBox(height: 10,),
            Row(
                children: [
              Text("Promos and offers",
                textAlign:TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),]),
                      SizedBox(height: 10,),
                      Row(
                          children: [
                          Text("Receive coupons,promotions and\nmoney-saving offers",
                              ),]),
                      SizedBox(height: 10,),
                      Row(children: [Icon(Icons.add_alert_rounded),
                        Text("Push",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(width: 200,),
                        Switch(
                        value: _value1,
                        onChanged: (value) {
                          setState(() {
                            _value1 = value;
                          });
                        },),],)
                    ],
                  ),
          ),

        ),
          SizedBox(height: 20,),
          Container(margin:EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                      children: [
                        Text("Orders",
                          textAlign:TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),]),
                  SizedBox(height: 10,),
                  Row(
                      children: [
                        Text("Receive updates related to your orders \nstatus",
                        ),]),
                  SizedBox(height: 10,),
                  Row(children: [Icon(Icons.add_alert_rounded,),
                    Text("Push",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 200,),
                    Switch(
                      value: _value2,
                      onChanged: (value) {
                        setState(() {
                          _value2 = value;
                        });
                      },),],)
                ],
              ),
            ),
          ),
        SizedBox(height: 280,),
        TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                padding:
                EdgeInsets.only(left: 130, right: 130, top: 4, bottom: 4),
                foregroundColor: Colors.red,
                elevation: 2,
                backgroundColor: Colors.amber),
            onPressed: null,
            child: Text(
              "Save Changes",textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),





      ]
        )
      );}}