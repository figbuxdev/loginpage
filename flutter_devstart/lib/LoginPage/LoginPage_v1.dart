import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginPage1 extends StatefulWidget {
  LoginPage1({Key key}) : super(key: key);

  @override
  LoginPage1State createState() => LoginPage1State();
}

class LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.10,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                    gradients: [
                      [Colors.blue, Colors.blue.shade100],
                      [Colors.blue, Colors.blue.shade100],
                      [Colors.blue, Colors.blue.shade100],
                      [Colors.blue, Colors.blue.shade200]
                    ],
                    durations: [
                      35000,
                      19440,
                      10800,
                      6000
                    ],
                    heightPercentages: [
                      0.20,
                      0.23,
                      0.25,
                      0.30
                    ],
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight),
                waveAmplitude: 0,
                size: Size(double.infinity, double.infinity),
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0)),
                      Card(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40.0))),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 16.0)),
                          )),
                      Card(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock), 
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40.0))),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 16.0)),
                          )),
                      Container(
                        width:double.infinity,
                        padding: EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                            elevation: 11,
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                          ),
                          child: Text("Login")
                        )
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
