import 'package:flutter/material.dart';
class dropDown extends StatefulWidget {
  const dropDown({Key? key}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
        backgroundColor: Colors.green,
      ),

    );
  }
}
