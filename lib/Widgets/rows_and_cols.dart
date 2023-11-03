import 'package:flutter/material.dart';

class rows_and_cols extends StatelessWidget {
  const rows_and_cols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height/2;
    return Scaffold(
      appBar: AppBar(
        title:Text('Roes and Column'),centerTitle: true,
      ),
      body:Container(
        height:h,
        width:w,
        color:Colors.yellow,
        child:Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(height:100.0,width:w,color: Colors.cyan,),
            Container(height:100.0,width:w,color: Colors.blue,),
            Container(height:100.0,width:w,color:Colors.purpleAccent),

          ],),
    //     // child:Row(
    //     //   // mainAxisAlignment: MainAxisAlignment.sp  aceEvenly,
    //     //   // crossAxisAlignment: CrossAxisAlignment.start,
    //     //   children: [
    //     //     Container(height:100.0,width:100.0,color: Colors.cyan,),
    //     //     Container(height:100.0,width:100.0,color: Colors.blue,),
    //     //     Container(height:100.0,width:100.0,color:Colors.purpleAccent),
    //     //
    //     //   ],
    //     // )
    //
    // // child:Wrap(
    // //   direction: Axis.horizontal,
    // //   alignment: WrapAlignment.spaceEvenly,
    // //   children: [
    // //     Container(height:100.0,width:100.0,color: Colors.cyan,),
    // //     Container(height:100.0,width:100.0,color: Colors.blue,),
    // //     Container(height:100.0,width:100.0,color:Colors.purpleAccent),
    // //
    //
    //   )
    ),
    );
  }
}
