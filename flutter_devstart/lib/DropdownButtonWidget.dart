import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  DropdownButtonWidget({Key key}) : super(key: key);

  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  static const menuItems = <String>['One', 'Two', 'Three', 'Four'];
  final List<DropdownMenuItem<String>> _dropmenuitems = menuItems
      .map((String value) =>
          DropdownMenuItem<String>(value: value, child: Text(value)))
      .toList();
  final List<PopupMenuItem<String>> _popupmenuitems = menuItems
      .map((String value) =>
          PopupMenuItem<String>(value: value, child: Text(value)))
      .toList();
  String _btn1SelectedVal = 'One';
  String _btn2SelectedVal;
  String _btn3SelectedVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButtonWidget"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('DropDownMenu with Default'),
            trailing: DropdownButton(
                value: _btn1SelectedVal,
                onChanged: (String newValue) {
                  setState(() {
                    _btn1SelectedVal = newValue;
                  });
                },
                items: this._dropmenuitems),
          ),
          ListTile(
            title: const Text('DropDownMenu with hint'),
            trailing: DropdownButton(
                value: _btn2SelectedVal,
                hint: const Text('Choose'),
                onChanged: (String newValue) {
                  setState(() {
                    _btn1SelectedVal = newValue;
                  });
                },
                items: this._dropmenuitems),
          ),
        ],
      ),
    );
  }
}
