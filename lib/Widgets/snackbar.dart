import 'package:flutter/material.dart';

class snackbar extends StatelessWidget {
  // const snackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body:Container(
        child:Center(
          child: ElevatedButton(
            onPressed: (){
              final snack=SnackBar(action:SnackBarAction(label:'Undo',textColor: Colors.blue,onPressed: () {},),backgroundColor:Colors.white60,duration:const Duration(milliseconds:900),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(10),
                  ),
                  content: Text("This is snackBar"),);
              ScaffoldMessenger.of(context).showSnackBar(snack);

            },child: Text("Hit it")
            ,
          ),

        ),
      )
    );
  }
}
