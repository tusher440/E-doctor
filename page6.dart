import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Model3.dart';


class appointmentlist1 extends StatefulWidget {
  const appointmentlist1({Key key}) : super(key: key);

  @override
  _appointmentlist1State createState() => _appointmentlist1State();
}

class _appointmentlist1State extends State<appointmentlist1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Last 10 days appointment list :",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 1),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text('Completed',
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 3.5,
                  height: 25,
                  color: Colors.black,
                ),

                Container(
                  width: 3.5,
                  height: 25,
                  color: Colors.black,
                ),
                SizedBox(width: 20,),
                Text('Canceled',
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
                SizedBox(width: 40,),
                Icon(Icons.segment, size: 35,)
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: Info().lists.length,
                itemBuilder: (context, index){
                  var data = Info().lists;
                  colorChange(){
                    if(data[index].status == 'Completed'){
                      return Color(0xfff3CB56A);
                    }else if(data[index].status == 'Canceled'){
                      return Color(0xfff22029);
                    }else{
                      return Color(0xff44e89a);
                    }
                  }
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff4ea9ae),
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/1.png"),
                            radius: 28,
                          ),
                          //Name title section start
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data[index].dr_name),
                              Text(data[index].title),
                              Text(data[index].pa_name),
                            ],
                          ),

                          Column(
                            children: [
                              Divider(height: MediaQuery.of(context).size.height/18,),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined, size: 18,),
                                  Text(' ${data[index].date}'),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(data[index].status,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    color: colorChange()
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined, size: 18),
                                  Text(' ${data[index].time}'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
