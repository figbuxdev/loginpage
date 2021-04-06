import 'package:flutter/material.dart';

class PathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width, 0.0, size.width, 0.0);
    path.lineTo(40.0, 70.0);
    path.quadraticBezierTo(10.0, 85.0, 0.0, 120.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw true;
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/natural.jpeg'),
                    fit: BoxFit.fill)),
          ),
          Center(
            child: Container(
               height: MediaQuery.of(context).size.height/1.5,
              width: MediaQuery.of(context).size.width/1.25,
              child: ClipPath(
                  clipper: PathClipper(),
                          child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color:Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                            child: Image.asset('assets/image/logo.png', height: 80)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'UserName',
                                  prefixIcon: Icon(Icons.person_outline),
                                  labelStyle: TextStyle(fontSize: 16)),
                            ),
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'PassWord',
                                prefixIcon: Icon(Icons.person_outline),
                                labelStyle: TextStyle(fontSize: 16)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: FloatingActionButton(
                                backgroundColor: Colors.pink,
                                child: Icon(Icons.arrow_forward),
                                onPressed: null),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
