import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class animatedWidget extends StatelessWidget {
  // const animatedWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery
        .of(context)
        .size
        .width;
      return Scaffold(
        appBar: AppBar(
          title: Text("Animated Text"),
          backgroundColor: Colors.red,
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              Row(

                children: [
                  CircleAvatar(radius: 50,
                    backgroundImage:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400'),),
                  SizedBox(width: 40.0,),
                  AnimatedTextKit(animatedTexts:[
                  TypewriterAnimatedText("Abhishek Jadhav",textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                    speed: Duration(milliseconds: 400),
                  ),

                  ],
                  repeatForever: true,
                  pause: Duration(milliseconds: 100),
                  stopPauseOnTap: true,
                  displayFullTextOnTap: true,)
                ],
              ),

        ]
      )
    ,)
    ,);
    }
  }

