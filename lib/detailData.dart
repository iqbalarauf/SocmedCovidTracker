import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protingtiga/DataModel.dart';

class DetailData extends StatelessWidget {
  final DataModel;
  const DetailData({Key? key, required this.DataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DataModel.name),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            Image.network(DataModel.ImageUrl),
            SizedBox(
              height: 10,
            ),
            Text(
              DataModel.desc,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
