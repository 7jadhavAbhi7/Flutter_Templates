import'package:flutter/material.dart';
class  Button_And_ElvatedButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"),),
      body: Center(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          TextButton(onPressed:(){},style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.deepOrangeAccent,
            ),
            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(20.0,0,20.0,0)),
            elevation:MaterialStateProperty.all(30),
            overlayColor: MaterialStateProperty.all(Colors.deepOrange)  //Gives splash when clicked

          ),child:Text("Hit it",style: TextStyle(fontSize: 20.0),),),
       SizedBox(height: 20.0,),
        Container(
          height: 40.0,
          width: 150.0,

          child: ElevatedButton(onPressed: (){print("Pressed");},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),

              ),

              child:Text("Hit it",style: TextStyle(fontSize: 20),)),
        )],
      ),

    ),);
  }
}
