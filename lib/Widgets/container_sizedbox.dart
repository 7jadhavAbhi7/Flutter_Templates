import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container_sizedbox extends StatelessWidget {

  //SizedBox is just like container but with limited functionalities it does not tell the
  //exact position of box as we can have color property for sizedbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Container and SizedBox"),
      centerTitle: true,),
      body: Center(
        child: Container(
          padding:EdgeInsets.all(20.0),
          height: 100.0,
          width:100.0,

          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),

            ),
            boxShadow:[
              BoxShadow(
                blurRadius: 10.0,
                spreadRadius: 10.0,
                color: Colors.grey,

              ),
            ],

          ),
          child: Center(child:Container(
            // margin: EdgeInsets.all(20.0),
            height:100.0,
            width:100.0,

            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(5.0),
                bottomLeft:Radius.circular(5.0),
              )
            ),
            child: Center(
              child:Text("Hello Abhishek"),),
          ),),



        ),
      ),
    );
  }
}
