import 'package:flutter/material.dart';

class BoxDecorationWidget extends StatefulWidget {
  BoxDecorationWidget({Key key}) : super(key: key);

  @override
  _BoxDecorationWidgetState createState() => _BoxDecorationWidgetState();
}

class _BoxDecorationWidgetState extends State<BoxDecorationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('BoxDecoration Widget')),
       body: Column(
         children: [
           Container(
             height:200,
             decoration: const BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               gradient: LinearGradient(
                 begin:Alignment.topRight,
                 end: Alignment.bottomLeft,
                 stops: [0.1,0.6,0.9],
                 colors:[Colors.red,Colors.yellow,Colors.green]
               ),
             ),
             ),
          Container(
             height:200,
             decoration: const BoxDecoration(
               shape: BoxShape.circle,
               gradient: LinearGradient(
                 begin:Alignment.topRight,
                 end: Alignment.bottomLeft,
                 stops: [0.1,0.6,0.9],
                 colors:[Colors.red,Colors.yellow,Colors.green]
               ),
             ),
             ),
          Container(
             height:200,
             decoration: const BoxDecoration(
               shape: BoxShape.circle,
               gradient: SweepGradient(
                 startAngle: 3.14/6,
                 endAngle: 3.14*1.8,
                 colors:[Colors.red,Colors.yellow,Colors.green]
               ),
             ),
             ),
         ],
       ),
    );
  }
}