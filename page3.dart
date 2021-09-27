import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 220, top: 60),
                      child: Text("Edit",
                        style: TextStyle(
                          color: const Color(0xff31bec9),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 5),
                      child: Icon(Icons.edit_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text("Dr Mahmum",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),

                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: CircleAvatar(
                      child: Image(image: AssetImage("assets/1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Profile",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  child:Text("Education: "),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("secondary level: "),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,),
                  child: Text("Higher secondary level:"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Degree: "),
                ),

                Text("Others Degree: (if any)"),
                Text("Date of birth: "),
                Text("Age: "),
                Text("Job: "),
                Text("Experiance: "),
                Text("Chamber Location: "),
                Text("Phone number: "),
                Text("Email: "),

                SizedBox(height: 50,),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 2,horizontal: 15),
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xff31bec9),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text("Update",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10, height: 20,),

                      Container(
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xff31bec9),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text("Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
