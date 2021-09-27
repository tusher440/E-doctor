import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Text("Edit",
          style: TextStyle(
            color: Colors.lightBlue,
          ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: ListView(
          children: [
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
            Container(
              child: Center(
                child: Text("Account Credit #2100",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Text("Profile: Dr Mahmum"),
            Text("Patient : 1100"),
            Text("Today appointment list"),
            Text("Last 10 days appointment list : 450"),
            Text("Next 07 days appointment list : 340"),
            Text("Appointment History : "),
            Text("Patient history : "),
            Text("Reminder : "),

            SizedBox(height: 50,),

            Container(
              height: 38,
              width: 20,
              decoration: BoxDecoration(
                color: const Color(0xff31bec9),
                borderRadius: BorderRadius.circular(50)
              ),
              child: FlatButton(
                  onPressed: () {

              },
                  child: Text("Update",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
