import 'package:flutter/material.dart';
class images extends StatelessWidget {
  const images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Container(
          height: 200,
          width: 200,

        )
      //   child: Container(
      //     decoration: BoxDecoration(
      //       boxShadow: [
      //         BoxShadow(blurRadius: 10,color: Colors.yellow,spreadRadius: 10),
      //       ],
      //       borderRadius: BorderRadius.circular(20),
      //       image:DecorationImage(
      //         // image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400',),
      //         image: AssetImage('assets/img.jpg'),
      //         fit:BoxFit.cover,
      //
      //       )
      //
      //       ),
      //
      //     height: 200.0,
      //     width: 200.0,
      //     // child: Image.network('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400',
      //
      //
      // ),

    ),);
  }
}
