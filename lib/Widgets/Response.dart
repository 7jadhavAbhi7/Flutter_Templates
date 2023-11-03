import 'package:flutter/material.dart';

class response extends StatelessWidget {
  const response({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Text("Your Response has been recorded",style: TextStyle(
          fontStyle: FontStyle.normal,
          color: Colors.brown,
          shadows: [
            Shadow(
              blurRadius: 20,
              color: Colors.cyan,

            )
          ]
        )),
      ),
    );
  }
}
