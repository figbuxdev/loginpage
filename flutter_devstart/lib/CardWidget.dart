import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  CardWidget({Key key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: Column(
          children: [
            Card(
                color: Colors.red,
                elevation: 10.0,
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(child: Text('Card 1')),
                    ],
                  ),
                )),
            Card(
              color: Colors.green,
              margin: const EdgeInsets.all(20),
              child: SizedBox(
                height: 100,
                child: InkWell(
                  splashColor: Colors.deepOrange,
                  onTap: () {
                    print(1);
                  },
                  child: Row(
                    children: [
                      Expanded(child: Text('Card 2 with Inkwell')),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
