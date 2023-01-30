import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  String Dropdownvalue = "Hyderabad";
  var items = [
    "Hyderabad",
    "Bangalore",
    "Delhi",
    "Pune",
  ];
  String? user;
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/IstharaImage.jpg",
                        width: 90,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "CO-LIVING",
                            style: TextStyle(fontSize: 4),
                          ),
                          Icon(
                            Icons.star,
                            size: 4,
                            color: Colors.pink,
                          ),
                          Text(
                            "STUDENT LIVING",
                            style: TextStyle(fontSize: 4),
                          ),
                          Icon(
                            Icons.star,
                            size: 4,
                            color: Colors.pink,
                          ),
                          Text(
                            "FOOD COURT",
                            style: TextStyle(fontSize: 4),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hai Dear ${user}",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Cities()
                    ],
                  ),
                  IstharaSmartFoodCourt(),
                  SizedBox(
                    height: 15,
                  ),
                  VCards(),
                  SizedBox(height: 15,),
                  Enquary(),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text("  Browse by Locality",style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("  We are also present in these locations",style: TextStyle(
                          fontSize: 18,color: Colors.grey
                      ),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child:Row(children:[ BuildingImage()])



                  )]))));


  }




  Widget Cities() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DropdownButton(
          value: Dropdownvalue,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              Dropdownvalue = newValue!;
            });
          },
        )
      ],
    );
  }

  Widget IstharaSmartFoodCourt() {
    return Container(
        height: 190,
        width: 380,
        child: Stack(fit: StackFit.passthrough, children: <Widget>[
          Card(
            elevation: 3,
            color: Colors.lightGreen.shade50,
          ),
          Positioned(
              left: 10,
              bottom: 100,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Isthara Smart Food Court ",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Reimagingining Food Court Experience',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  )
                ],
              )),
          Positioned(
              bottom: 20,
              left: 15,
              child: Container(
                decoration: BoxDecoration(color: Colors.pink),
                height: 30,
                width: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    " Order now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Positioned(
              top: 70,
              bottom: 10,
              right: 5,
              child: Image.asset(
                "assets/images/food1.jpg",
                width: 160,
              ))
        ]));
  }

  Widget VCards() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(fit: StackFit.passthrough, children: <Widget>[
          Container(
            width: 110,
            height: 200,
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 1,
              shadowColor: Colors.blueGrey,
              color: Colors.pink.shade50,
            ),
          ),
          Positioned(
              top: 20,
              left: 35,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "assets/images/IstharaImage.jpg",
                  width: 30,
                ),
                SizedBox(height: 10,),
                Text(
                  'V Safe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ])),
          Positioned(
              top: 60,
              left: 25,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Your Safety\n     is Our \nResponsibility',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ])),
          Positioned(left: 50,
            bottom: 0,
            child: Container(
                width: 20, height: 30,
                decoration: BoxDecoration(color: Colors.lightGreenAccent,
                    shape: BoxShape.circle
                ),

                child: Icon(Icons.arrow_forward_ios_rounded, size: 15,)),


          )
        ]),
        SizedBox(width: 15,),
        Stack(fit: StackFit.passthrough, children: <Widget>[
          Container(
            width: 110,
            height: 200,
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 1,
              shadowColor: Colors.blueGrey,
              color: Colors.green.shade50,
            ),
          ),
          Positioned(
              top: 20,
              left: 35,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "assets/images/IstharaImage.jpg",
                  width: 30,
                ),
                SizedBox(height: 10,),
                Text(
                  'V Eat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ])),
          Positioned(
              top: 60,
              left: 22,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Healthies food',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ])),
          Positioned(left: 50,
            bottom: 0,
            child: Container(
                width: 20, height: 30,
                decoration: BoxDecoration(color: Colors.lightGreenAccent,
                    shape: BoxShape.circle
                ),

                child: Icon(Icons.arrow_forward_ios_rounded, size: 15,)),


          )
        ]),
        SizedBox(width: 15,),
        Stack(fit: StackFit.passthrough, children: <Widget>[
          Container(
            width: 110,
            height: 200,
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 1,
              shadowColor: Colors.blueGrey,
              color: Colors.blue.shade50,
            ),
          ),
          Positioned(
              top: 20,
              left: 35,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  "assets/images/IstharaImage.jpg",
                  width: 30,
                ),
                SizedBox(height: 10,),
                Text(
                  'V Well',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ])),
          Positioned(
              top: 60,
              left: 32,
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Wellness \n program',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ])),
          Positioned(left: 50,
            bottom: 0,
            child: Container(
                width: 20, height: 30,
                decoration: BoxDecoration(color: Colors.lightGreenAccent,
                    shape: BoxShape.circle
                ),

                child: Icon(Icons.arrow_forward_ios_rounded, size: 15,)),


          )
        ]),
      ],
    );
  }

  Widget Enquary() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(fit: StackFit.passthrough, children: <Widget>[
            Container(
              width: 370,
              height: 100,
              child: Card(
                margin: EdgeInsets.all(0),
                elevation: 1,
                shadowColor: Colors.blueGrey,
                color: Colors.pink.shade50,
              ),
            ),
            Positioned(
                top: 20,
                left: 35,
                child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  Image.asset(
                    "assets/images/IstharaImage.jpg",
                    width: 60,
                  ),
                  SizedBox(width: 15,),
                  Text(
                    'Want us to call\nyou,just drop a\nmessage',
                    style: TextStyle( fontSize: 15),
                  ),
                  SizedBox(width: 30,),
                  Container(width: 120,height: 40,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: Colors.pink
                    ),

                    child: TextButton(onPressed: (){},
                        child: Text("Enquire Now",
                          style: TextStyle(fontSize: 15,
                            color: Colors.white,
                    ),)),
                  )
                ]))
          ])
        ]);
  }
}



Widget BuildingImage() {
  return SingleChildScrollView(scrollDirection: Axis.horizontal,
  child:Row(children:[
    Stack(
  fit: StackFit.passthrough, children: <Widget>[Container(
              color: Colors.black12,
              height: 150,width: 100,
              child:
    Image.asset("assets/images/building1.jpg",fit: BoxFit.cover,)),


    Positioned(
        top: 20,
        left: 5,
        child:
        Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: Colors.white

        ),
          child: Row(children: [Text("Gachibowli"
          ),

          ]),
        ))
  ]),
    SizedBox(width: 10,),
    Stack(
        fit: StackFit.passthrough, children: <Widget>[Container(
        color: Colors.black12,
        height: 150,width: 100,
        child:
        Image.asset("assets/images/building6.jpg",fit: BoxFit.cover,)),


      Positioned(
          top: 20,
          left: 5,
          child:
          Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white

          ),
            child: Row(children: [Text("Madhapur"
            ),

            ]),
          ))
    ]),
    SizedBox(width: 10,),
    Stack(
        fit: StackFit.passthrough, children: <Widget>[Container(
        color: Colors.black12,
        height: 150,width: 100,
        child:
        Image.asset("assets/images/building5.jpg",fit: BoxFit.cover,)),


      Positioned(
          top: 20,
          left: 5,
          child:
          Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white

          ),
            child: Row(children: [Text("Gowlidoddi"),

            ]),
          ))
    ]),
    SizedBox(width: 10,),
    Stack(
        fit: StackFit.passthrough, children: <Widget>[Container(
        color: Colors.black12,
        height: 150,width: 100,
        child:
        Image.asset("assets/images/building4.jpg",fit: BoxFit.cover,)),


      Positioned(
          top: 20,
          left: 5,
          child:
          Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white

          ),
            child: Row(children: [Text("ManiKonda"
            ),

            ]),
          ))
    ]),
    SizedBox(width: 10,),
    Stack(
        fit: StackFit.passthrough, children: <Widget>[Container(
        color: Colors.black12,
        height: 150,width: 100,
        child:
        Image.asset("assets/images/building3.jpg",fit: BoxFit.cover,)),


      Positioned(
          top: 20,
          left: 5,
          child:
          Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Colors.white

          ),
            child: Row(children: [Text("Kukatapally"
            ),

            ]),
          ))
    ])
  ]
  )
  );

}
