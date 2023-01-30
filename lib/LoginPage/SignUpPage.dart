import 'package:flutter/material.dart';
import 'package:login_page/LoginPage/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
runApp(MaterialApp(
  home: SignUpPage(),
));}
TextEditingController _username = TextEditingController();
TextEditingController _password = TextEditingController();
TextEditingController _email = TextEditingController();

class SignUpPage extends StatefulWidget {
  State<SignUpPage> createState() {

    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child:SafeArea(
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
                    Icon(Icons.star, size: 4, color: Colors.pink,),
                    Text(
                      "STUDENT LIVING",
                      style: TextStyle(fontSize: 4),
                    ),
                    Icon(Icons.star, size: 4, color: Colors.pink,),
                    Text(
                      "FOOD COURT",
                      style: TextStyle(fontSize: 4),
                    ),
                  ],)

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 10,),
                  Text(
                    " Sign Up",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [SizedBox(width: 15,),
                Text("Create an Account to start using Isthara",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),)
              ],),
              buildName(),
              buildPassword(),
              buildEmail(),
              ElevatedButton(
                child: Text('SIGN UP'),
                onPressed:(){
                  Details(_username.text,_password.text,_email.text);
                  print("$_password,$_username");

                  if(_username != null  && _password != null && _email != null){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LogInPage()));

                  }
                },),
              Row(children: [SizedBox(width: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text("Already a mamber?"),
                  SizedBox(width: 20,),
                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LogInPage()
                    ));
                  },
                      child: Text("SIGN IN",
                        style: TextStyle(color: Colors.pink, fontSize: 20),))
                ],)
              ],)

            ]))
    ));




  }

  }
void Details(username, password, email) async {
  final SharedPreferences userdetails = await SharedPreferences.getInstance();
  userdetails.setString("username", username);
  userdetails.setString("password", password);
  userdetails.setString("email", email);
}

  Widget buildName() =>
      buildTitle(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: TextField(
            controller: _username,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
              hintText: 'Enter Your Name',
            ),
          ),
        ),
  );
  Widget buildPassword() =>
      buildTitle(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: TextFormField(
              controller: _password,
              validator: (value) => "Please enter password",
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
            ),
          ),
      );
  Widget buildEmail() =>
      buildTitle(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: TextField(
            controller: _email,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter Your Email Id',
            ),
          ),
        ),
      );


  Widget buildTitle({
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          child,
        ],
      );
