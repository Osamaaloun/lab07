import 'package:flutter/material.dart';
import 'package:lab07/screens/screen1.dart';
import 'package:lab07/screens/screen2.dart';
import './screens/screen1.dart';
import './screens/screen2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(fontFamily: "PlayfairDisplay-VariableFont_wght"),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg?w=2000"),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromARGB(255, 38, 57, 38),
                ),
                margin: EdgeInsets.all(10),
                height: 120,
                width: 130,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(15),
                  height: 80,
                  width: 100,
                  color: Colors.yellowAccent,
                  child: Text(
                    "welcome to home page",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Divider(height: 50),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen1();
                      },
                    ));
                  });
                },
                child: Container(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text(
                        "jordan",
                        style: TextStyle(fontSize: 30),
                      ),
                      trailing: Icon(
                        Icons.travel_explore,
                      ),
                      leading: Image(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Flag_of_Jordan.svg/2560px-Flag_of_Jordan.svg.png")),
                    )),
              ),Divider(height: 40,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen2();
                      },
                    ));
                  });
                },
                child: Container(
                    color: Colors.blue,
                    child: ListTile(
                      title: Text(
                        "dubai",
                        style: TextStyle(fontSize: 30),
                      ),
                      trailing: Icon(
                        Icons.travel_explore,
                      ),
                      leading: Image(
                          image: NetworkImage(
                              "https://t3.ftcdn.net/jpg/03/47/54/84/360_F_347548443_HYyk9dgqXtDPQKiefuA87kz8HvTfkxEr.jpg")),
                    )),
              ),
            ],
          ),
        ));
  }
}
