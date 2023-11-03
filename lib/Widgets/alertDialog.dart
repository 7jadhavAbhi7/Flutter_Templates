import 'dart:io';

import 'package:flutter/material.dart';
class alertDialog extends StatelessWidget {
  const alertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
_showDialogBox(context);
          },
          child: Text("Hit it"),
        ),

      ),
    );
  }
}

Future<void>_showDialogBox(BuildContext context)async{            //Asynchronous function runs independent of main function it is used when button is pressed so it may or may not contribute during main program execution
  return showDialog(context: context, builder:(BuildContext context){
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text("Alert Box title"),
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child:ListBody(
          children: [
            Text('This is demo'),
            Text('This is demo'),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('Approve')),
        TextButton(onPressed: (){
          Navigator.of(context).pop();  //Used to close dialog box
          exit(0);   //Exit the app
        }, child: Text('Exit'))
      ],
    );

  },);
}