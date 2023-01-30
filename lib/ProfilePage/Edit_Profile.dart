import 'package:flutter/material.dart';

void main() => runApp(EditProfile());

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.black12),
                    child: Icon(
                      Icons.person,
                      size: 130,
                      color: Colors.white
                    ),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 0,
                      child: Container(
                        height: 25,
                        width: 30,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 0),
                            color: Colors.pink.shade500),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ProfileDetails("User name", "Isthara Parks"),
            ProfileDetails("Mobile Number", "+91 0123456789"),
            ProfileDetails("Email Id", "abcdefgbalu@gmail.com"),
            Row(children: [
              Text(
                "Gender",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              )
            ]),
            Container(
              height: 100,
              child: Gender(),
            ),
            SizedBox(height: 50),
            TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsets.only(
                        left: 110, right: 110, top: 8, bottom: 8),
                    foregroundColor: Colors.red,
                    elevation: 2,
                    backgroundColor: Colors.amber),
                onPressed: null,
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
            )
          ],
        ),
      ),
    );
  }

  Widget ProfileDetails(String labeltext, String placeholder) {
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: TextField(
          decoration: InputDecoration(
              labelText: labeltext,
              labelStyle: TextStyle(fontWeight: FontWeight.w500),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        ));
  }
}

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [
          Radio(
              value: "Male",
              hoverColor: Colors.lightGreen,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              }),
          Text(
            "Male",
            style: TextStyle(fontSize: 22),
          )
        ]),
        Row(children: [
          Radio(
              value: "Female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              }),
          Text(
            "Female",
            style: TextStyle(fontSize: 22),
          )
        ]),
        Row(children: [
          Radio(
              value: "Others",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              }),
          Text(
            "Others",
            style: TextStyle(fontSize: 22),
          )
        ])
      ],
    ));
    ;
  }
}