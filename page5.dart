import 'package:flutter/material.dart';
import 'Model2.dart';


class appointmentlist extends StatefulWidget {
  const appointmentlist({Key key}) : super(key: key);

  @override
  _appointmentlistState createState() => _appointmentlistState();
}

class _appointmentlistState extends State<appointmentlist> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Today appointment list  : ",
        style: TextStyle(
        color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Date",
                style: TextStyle(
                  color: Colors.black,
                    fontSize: 16,
                ),
                ),

                SizedBox(width: 150,),

                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text("Time: 18.30",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xff31bec9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text("Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 150,),

                Container(
                  height: 20,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color(0xff31bec9),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text("Visiting Hour",
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
          Expanded(
            child: ListView.builder(
                itemCount: 17,
                itemBuilder: (context, index){
                  var data = Info().lists;
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff4ea9ae),
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 180),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(data[index].Mr_name),
                                ),
                              ),
                              Divider(height: MediaQuery.of(context).size.height/20,),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Icon(Icons.watch_later_outlined, size: 20,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(' ${data[index].time}'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
        ],
      ),
    );
  }
}
