import 'package:flutter/material.dart';
import 'package:lab07/main.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String? yourActivities;
  String? yourclass;
  List chosePersonsNumber = [
    "1 person",
    "2 person",
    "3 person",
    "4 person",
  ];
  String defultvalue = "1 person";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.guinnessworldrecords.ae/Images/Burj-portrait-lagre_tcm27-475749.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40),
              margin: EdgeInsets.all(15),
              color: Color.fromARGB(255, 166, 99, 99),
              child: Text(
                "please enter your info",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60),
              margin: EdgeInsets.all(15),
              color: Color.fromARGB(255, 136, 57, 57),
              child: Text(
                "how many person",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(left: 130, right: 130),
              child: Center(
                child: DropdownButton(
                  dropdownColor: Colors.black,
                  focusColor: Colors.brown,
                  elevation: 40,
                  value: defultvalue,
                  items: chosePersonsNumber
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            "$e",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      defultvalue = val.toString();
                    });
                  },
                ),
              ),
            ),
            Divider(
              height: 30,
            ),
            Center(
              child: Container(
                color: Colors.brown,
                child: Text(
                  "chose your class",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.airplane_ticket),
                title: Text(
                  "first class",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "500",
                  style: TextStyle(color: Colors.blue, fontSize: 23),
                ),
                value: "first class",
                groupValue: yourclass,
                onChanged: (val) {
                  setState(() {
                    yourclass = val.toString();
                  });
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.airplane_ticket),
                title: Text(
                  "busniss class",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "300",
                  style: TextStyle(color: Colors.blue, fontSize: 23),
                ),
                value: "busniss class",
                groupValue: yourclass,
                onChanged: (val) {
                  setState(() {
                    yourclass = val.toString();
                  });
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.airplane_ticket),
                title: Text(
                  "economy class",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "199",
                  style: TextStyle(color: Colors.blue, fontSize: 23),
                ),
                value: "economy class",
                groupValue: yourclass,
                onChanged: (val) {
                  setState(() {
                    yourclass = val.toString();
                  });
                },
              ),
            ),
            Container(
              color: Color.fromARGB(255, 138, 73, 49),
              child: Text(
                "Activities you want to do during the trip",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.local_activity),
                title: Text(
                  " vist burjkalifa",
                  style: TextStyle(fontSize: 30),
                ),
                value: "vist burjkalifa ",
                groupValue: yourActivities,
                onChanged: (val) {
                  setState(() {
                    yourActivities = val.toString();
                  });
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.local_activity),
                title: Text(
                  "go to the dubaimall",
                  style: TextStyle(fontSize: 30),
                ),
                value: "go to the dubaimall ",
                groupValue: yourActivities,
                onChanged: (val) {
                  setState(() {
                    yourActivities = val.toString();
                  });
                },
              ),
            ),
            Container(
              color: Colors.white30,
              child: RadioListTile(
                secondary: Icon(Icons.local_activity),
                title: Text(
                  " go to the burjal3arb",
                  style: TextStyle(fontSize: 30),
                ),
                value: "go to the burjal3arb ",
                groupValue: yourActivities,
                onChanged: (val) {
                  setState(() {
                    yourActivities = val.toString();
                  });
                },
              ),
            ),ElevatedButton(onPressed: () {
            setState(() {
              Navigator.pop(context,MaterialPageRoute(builder: (context) {
                return MyApp() ;
              },));
            });  
            }, child: Text("return to home page",style: TextStyle(fontSize: 30),))
          ],
        ),
      ),
    );
  }
}
