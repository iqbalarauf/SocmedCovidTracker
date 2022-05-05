import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var _value1 = false;
  var _value2 = false;
  var _value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: [
          SwitchListTile(value: _value1, onChanged: (value) {
            setState(() {
              _value1 = value;
            });
          },
          title: Text('Notification'),
          ),

          SwitchListTile(value: _value2, onChanged: (value) {
            setState(() {
              _value2 = value;
            });
          },
            title: Text('Enable location'),
          ),

          SwitchListTile(value: _value3, onChanged: (value) {
            setState(() {
              _value3 = value;
            });
          },
            title: Text('English Language'),
          ),

        ],
      ),
    );
  }
}

