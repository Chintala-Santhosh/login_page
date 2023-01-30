
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_page/LoginPage/SignUpPage.dart';
import 'package:login_page/TaskIsthara.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(
  home: LogInPage(),
));

TextEditingController _username = TextEditingController();
TextEditingController _password = TextEditingController();

class LogInPage extends StatefulWidget {

  State<LogInPage> createState() {
    return _LogInPageState();
  }
}

class _LogInPageState extends State<LogInPage> {
String? user;
String? pass;



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

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Row(
                      children: [Text(
                        "CO-LIVING",
                        style: TextStyle(fontSize: 4),
                      ),
                        Icon(Icons.star,size: 4,color: Colors.pink,),
                        Text(
                          "STUDENT LIVING",
                          style: TextStyle(fontSize: 4),
                        ),
                        Icon(Icons.star,size: 4,color: Colors.pink,),
                        Text(
                          "FOOD COURT",
                          style: TextStyle(fontSize: 4),
                        ),
                      ],)

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text(
                        " Sign In",
                        style: TextStyle(fontSize: 27,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    SizedBox(width: 20,),
                    Text("Welcome to Isthara sign in \nwith Your details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                  ],),
                  buildName(),
                  buildPassword(),
                  ElevatedButton(
                    child: Text('SIGN IN'),
                    onPressed:(){
                      getDetails();
                      }),
                  Row(
                    children: [
                    SizedBox(width: 20,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      children: [
                      Text("Don't have a account?" ),
                      SizedBox(width: 20,),
                      TextButton(
                           onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context)=>SignUpPage()
                           )); },
                           child: Text("SIGN UP",style: TextStyle(color: Colors.pink,fontSize: 20),))
                    ],)
                  ],)




                ]))));

  }

  void getDetails() async {
    final SharedPreferences userDetails = await SharedPreferences.getInstance();
    user= userDetails.getString('username');
    pass =userDetails.getString('password');
    print("$user $pass");
    if(user == _username.text && pass == _password.text) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => IstharaApp()));
      }
    else{print("log in failed");

    }
  }

  Widget buildPassword() => buildTitle(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: TextFormField(
            controller: _password,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter Password',
            ),
          ),
        ),
      );
  Widget buildName() => buildTitle(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            controller: _username,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'UserName',
              hintText: 'Enter Your name',
            ),
          ),
        ),
      );

  Widget buildTitle({
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          child,
        ],
      );
}

