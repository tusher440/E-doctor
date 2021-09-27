import 'package:flutter/material.dart';

class box extends StatefulWidget {
  //const Page({Key? key}) : super(key: key);

  @override
  _boxState createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("Tips",
        style: TextStyle(
          color: Colors.black,
        ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.00),

                boxShadow: [
                  BoxShadow(
                    color: Colors. white,
                    spreadRadius: 6.00,
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: const Color(0xff31bec9),
                ),

              ),
            ),

            SizedBox(height: 40,),

            Container(
              height: 70,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.00),

                boxShadow: [
                  BoxShadow(
                    color: Colors. white,
                    // spreadRadius: 5.00,
                    // blurRadius: 5.0,
                    // offset: Offset(5.0, 5.0),
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: const Color(0xff31bec9),
                ),


              ),
            ),

            SizedBox(height: 40,),

            Container(
              height: 70,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.00),

                boxShadow: [
                  BoxShadow(
                    color: Colors. white,
                    spreadRadius: 5.00,
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0),
                  ),

                ],
                border: Border.all(
                  width: 2,
                  color: const Color(0xff31bec9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

