import 'package:flutter/material.dart';


void main() => runApp(SearchPage());

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 65,),
        Text("  Search",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        SizedBox(height: 20
          ,),
        Padding(padding:EdgeInsets.only(left: 20),child:Container(
          width: 350,height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 1)
          ),
          child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Text("Find your property by...",style: TextStyle(
              fontSize: 25,color: Colors.black54
            ),),
              SizedBox(width: 25,),
              Icon(Icons.search)

            ],
          ),
        )
        ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 20,),
            Icon(Icons.my_location_outlined,color: Colors.pink,size: 35,),
            SizedBox(width: 10,),
            Text("Nearby",style: TextStyle(
              fontSize: 22,fontWeight: FontWeight.bold
            ),),
            Text('(Current location)')
          ],),
          SizedBox(height: 50,),
          Row(children: [
            SizedBox(width: 20,),
            Text("Saved Places(0)",style: TextStyle(color: Colors.black54,fontSize: 25),)
          ],),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: 20,),
            Text("+Add A Place",style: TextStyle(color: Colors.pinkAccent.shade400,fontSize: 20,fontWeight: FontWeight.w500),)
          ],),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: 20,),
            Text("Previous Searches",style: TextStyle(color: Colors.black54,fontSize: 25),)
          ],),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: 20,),
            Text("No previous searches",style: TextStyle(color: Colors.black54,fontSize: 18,)
            ) ],),




        ],),

    
      
    );}}